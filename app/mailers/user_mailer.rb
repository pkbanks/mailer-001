class UserMailer < ApplicationMailer
  # this is a hash called default
  default from: "hoorayfun123@gmail.com"


  def welcome_email(user)
    p "*** welcome email ***"
    @user = user
    @url = 'http://example.com/login'

    # ApplicationMailer.mail method, accepts a headers hash
    # https://apidock.com/rails/ActionMailer/Base/mail
    mail(to: @user.email, subject: "Welcome to CBLocks")
  end
end
