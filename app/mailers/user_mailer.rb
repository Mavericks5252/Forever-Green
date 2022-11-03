class UserMailer < ActionMailer::Base
    def welcome_email(user)
        @user = user
        mail(
            from: "fenrirocks4010@gmail.com",
            to: @user.email,
            subject: 'Welcome to the Forever Green family!')
    end



    def send_notice(user, unsubscribe)
      @user = user
      @unsubscribe = unsubscribe
      mail(to: user.email, subject: "Event Info")
    end 
  end
  