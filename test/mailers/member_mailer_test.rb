require "test_helper"

class MemberMailerTest < ActionMailer::TestCase
  test "send_welcomeevent_email" do
    mail = MemberMailer.send_welcomeevent_email
    assert_equal "Send welcomeevent email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
