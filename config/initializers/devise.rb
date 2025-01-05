Devise.setup do |config|
  # Configure the e-mail sender
  config.mailer_sender = 'noreply@example.com'

  # Configure the case of emails for devise (this is just an example, adapt to your needs)
  config.secret_key = 'your-secret-key'

  # ==> Mailer Configuration
  # Configure the default URL options for the mailer
  config.mailer = 'Devise::Mailer'
  config.mailer_sender = 'noreply@example.com'
  
  # ==> SMTP Configuration (this is crucial for sending emails)
  config.mailer = 'Devise::Mailer'
  
  # Here, we setup the SMTP server for the e-mail functionality. Adjust for your own SMTP server.
  config.mailer_sender = 'noreply@example.com'

  config.smtp_settings = {
    address:              'smtp.example.com',  # Replace with your SMTP server address
    port:                 587,                 # Usually 587 for TLS or 465 for SSL
    domain:               'example.com',       # Your domain or your provider's domain
    user_name:            'ENV['GMAIL_USERNAME']',  # Your email address for SMTP
    password:             'ENV['GMAIL_PASSWORD']',     # Your email password or an app password
    authentication:       'plain',             # The authentication method, use 'login' or 'plain'
    enable_starttls_auto: true,                # Enable TLS
  }

  # ==> Other common Devise configurations

  # ==> Password recovery configuration
  # Enable/disable sending emails for password reset
  config.reconfirmable = true
  config.reset_password_keys = [ :email ]
  config.reset_password_within = 6.hours

  # ==> Session configuration
  config.timeout_in = 30.minutes
end
