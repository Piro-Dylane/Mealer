# Preview all emails at http://localhost:3000/rails/mailers/member_mailer
class MemberMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/member_mailer/send_welcomeevent_email
  def send_welcomeevent_email
    MemberMailer.send_welcomeevent_email
  end

end
