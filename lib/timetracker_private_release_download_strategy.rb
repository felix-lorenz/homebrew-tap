# frozen_string_literal: true

require "json"
require "uri"
require "download_strategy"

# Keep credentials out of the Cask URL, serialized metadata and cache keys.
class TimeTrackerPrivateReleaseDownloadStrategy < CurlDownloadStrategy
  RELEASE_REPO = "felix-lorenz/timetracker-releases"
  DOWNLOAD_PATTERN = %r{\Ahttps://github\.com/#{RELEASE_REPO}/releases/download/(v\d+\.\d+\.\d+)/(TimeTracker-\d+\.\d+\.\d+\.zip)\z}.freeze

  private

  # No unauthenticated HEAD request or credential lookup while inspecting a Cask.
  def resolve_url_basename_time_file_size(url, timeout: nil)
    match = download_identity(url)
    [url, match[2], nil, nil, "application/zip", false]
  end

  def _fetch(url:, resolved_url:, timeout:)
    match = download_identity(url)
    token = ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "").strip
    if token.empty? || token.match?(/[\r\n]/)
      raise CurlDownloadStrategyError.new(url, "Set HOMEBREW_GITHUB_API_TOKEN to the TimeTracker download token from your login Keychain.")
    end

    started = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    headers = ["--header", "Authorization: Bearer #{token}",
               "--header", "X-GitHub-Api-Version: 2022-11-28"]
    # The metadata endpoint must not redirect an authenticated request.
    response = curl_output("--fail", "--silent", "--no-verbose", "--no-location", "--max-redirs", "0",
                           "--proto", "=https", *headers,
                           "--header", "Accept: application/vnd.github+json",
                           "https://api.github.com/repos/#{RELEASE_REPO}/releases/tags/#{match[1]}",
                           secrets: [token], print_stdout: false, print_stderr: false, timeout: timeout)
    response.assert_success!
    release = JSON.parse(response.stdout)
    unless release.is_a?(Hash) && release["tag_name"] == match[1] && release["draft"] == false
      raise CurlDownloadStrategyError.new(url, "The published TimeTracker release could not be verified.")
    end
    assets = Array(release["assets"]).select { |asset| asset.is_a?(Hash) && asset["name"] == match[2] }
    unless assets.length == 1 && assets.first["id"].is_a?(Integer) && assets.first["id"].positive?
      raise CurlDownloadStrategyError.new(url, "The release must contain exactly one matching TimeTracker ZIP asset.")
    end

    remaining = timeout && timeout - (Process.clock_gettime(Process::CLOCK_MONOTONIC) - started)
    raise Timeout::Error, "TimeTracker download timed out." if remaining && remaining <= 0

    # curl drops Authorization on cross-host redirects. Never use --location-trusted.
    # Set --location last: negating --location-trusted also disables redirects in curl.
    curl_download("--fail", "--silent", "--no-verbose", "--no-location-trusted", "--location",
                  "--proto", "=https", "--proto-redir", "=https", *headers,
                  "--header", "Accept: application/octet-stream",
                  "https://api.github.com/repos/#{RELEASE_REPO}/releases/assets/#{assets.first['id']}",
                  to: temporary_path, secrets: [token], print_stdout: false,
                  print_stderr: false, try_partial: false, timeout: remaining)
  rescue JSON::ParserError, ErrorDuringExecution
    # Do not propagate response bodies, signed URLs or raw command arguments.
    raise CurlDownloadStrategyError.new(url, "TimeTracker download failed. Check the download token, Contents: read permission, release availability and network connection."), cause: nil
  end

  def download_identity(url)
    match = DOWNLOAD_PATTERN.match(url)
    unless match && match[2] == "TimeTracker-#{match[1].delete_prefix('v')}.zip"
      raise CurlDownloadStrategyError.new(url, "Unexpected TimeTracker release URL.")
    end
    match
  end
end
