# frozen_string_literal: true

class TestMailer < ApplicationMailer
  def test_email
    mail(to: "samueljonascali@gmail.com", subject: "sending test email") do |format|
      format.text { render plain: "This is an email test" }
    end
  end
end
