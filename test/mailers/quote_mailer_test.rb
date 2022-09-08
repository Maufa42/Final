require "test_helper"

class QuoteMailerTest < ActionMailer::TestCase
  test "invitation_create" do
    mail = QuoteMailer.invitation_create
    assert_equal "Invitation create", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
