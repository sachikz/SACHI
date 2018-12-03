class ContactMailer < ActionMailer::Base
  default from: "sachikz01@gmail.com"
  default to: "sachikz01@gmail.com"

  def received_email(contact)
    @contact = contact
    mail(subject: 'self-introduction 問い合わせがありました')
  end
end
