class TestMailer < ApplicationMailer
  def test_email
    mail(to: 'samueljonascali@gmail.com', subject: 'Teste de envio de e-mail') do |format|
      format.text { render plain: 'Este é um teste de e-mail' }
    end
  end
end
