# frozen_string_literal: true

class TestMailer < ApplicationMailer
  def test_email
    mail(to: "samueljonascali@gmail.com", subject: I18n.t("mailer.test")) do |format|
      format.text { render plain: "This is an email test" }
    end
  end
end
