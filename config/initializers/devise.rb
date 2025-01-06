# frozen_string_literal: true

Devise.setup do |config|
  config.secret_key = ENV.fetch("DEVISE_SECRET_KEY", nil) if Rails.env.production?
  config.mailer_sender = ENV.fetch("DEVISE_MAILER_SENDER", "noreply@yourdomain.com")
  config.mailer = "CustomDeviseMailer"
  require "devise/orm/active_record"
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 12
  config.reconfirmable = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
