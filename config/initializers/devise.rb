Devise.setup do |config|
  # Configurações do Mailer
  config.mailer_sender = ENV['GMAIL_USERNAME']
  config.mailer = 'Devise::Mailer'


  config.smtp_settings = {
    address:              'smtp.gmail.com',  # Servidor SMTP do Gmail
    port:                 587,               # Porta para TLS
    domain:               'gmail.com',       # Domínio do Gmail
    user_name:            ENV['GMAIL_USERNAME'],
    password:             ENV['GMAIL_PASSWORD'],  # Sua senha ou senha de app do Gmail
    authentication:       'plain',           # Método de autenticação
    enable_starttls_auto: true,              # Ativa TLS
  }

  
  config.stretches = Rails.env.test? ? 1 : 12
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.reconfirmable = true
  config.sign_out_via = :delete
  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other
end
