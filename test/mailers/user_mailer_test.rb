# frozen_string_literal: true

require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  def setup
    @user = users(:one)
  end

  test 'welcome' do
    email = UserMailer.welcome_email(@user)
    assert_emails 1 do
      email.deliver_later
    end

    assert_equal email.to, [@user.email]
    assert_equal email.from, ['fenrirocks@gmail.com']
  end
end