class MemberMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.member_mailer.send_welcomeevent_email.subject
  #
  def send_welcomeevent_email
   @user = params[:user]
   @event = params[:event]
    mail(to: @user.email, subject: 'Welcome to events')
  end
end
