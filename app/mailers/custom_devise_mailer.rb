# frozen_string_literal: true

class CustomDeviseMailer < Devise::Mailer
  helper :application
  include Devise::Controllers::UrlHelpers
  default template_path: "devise/mailer"


  def reset_password_instructions(record, token, opts = {})
    opts[:subject] = "Instructions for changing your password"
    super
  end
end
