class ContactMailer < ActionMailer::Base
  helper "spree/base"

  def message_email(message)
    subject = "#{Spree::Config[:site_name]} - " + I18n.t(:mail_subject, :email => message.email)

    @message = message
    mail(:to => message.topic.emails, :subject => subject, :reply_to => message.email) 
  end
end
