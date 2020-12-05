Imgproxy.configure do |config|
  # imgproxy endpoint
  #
  # Full URL to where your imgproxy lives.
  config.endpoint = "http://0.0.0.0:8181"

  # Next, you have to provide your signature key and salt.
  # If unsure, check out https://github.com/imgproxy/imgproxy/blob/master/docs/configuration.md first.

  # Hex-encoded signature key
  config.hex_key = "your_key"
  # Hex-encoded signature salt
  config.hex_salt = "your_salt"

  # Base64 encode all URLs
  # config.base64_encode_urls = true

  # Always escape plain URLs
  # config.always_escape_plain_urls = true
end

Imgproxy.extend_active_storage!
