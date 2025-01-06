# frozen_string_literal: true

Devise.setup do |config|
  # Configuração da chave secreta para ambientes de produção
  # Certifique-se de definir `DEVISE_SECRET_KEY` em suas variáveis de ambiente
  config.secret_key = ENV['DEVISE_SECRET_KEY'] if Rails.env.production?

  # Configuração do remetente dos e-mails do Devise
  # Certifique-se de definir `DEVISE_MAILER_SENDER` nas variáveis de ambiente
  config.mailer_sender = ENV.fetch('DEVISE_MAILER_SENDER', 'noreply@yourdomain.com')

  # Configuração do ORM (Active Record, por padrão)
  require 'devise/orm/active_record'

  # Configurações de autenticação
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]

  # Configuração de storage para estratégias de autenticação
  config.skip_session_storage = [:http_auth]

  # Configuração de estiramento do bcrypt para hashing
  config.stretches = Rails.env.test? ? 1 : 12

  # Configurações de confirmação
  config.reconfirmable = true

  # Comprimento da senha
  config.password_length = 6..128

  # Regex para validar formatos de e-mail
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  # Período para redefinição de senha
  config.reset_password_within = 6.hours

  # Método HTTP para logout
  config.sign_out_via = :delete

end
