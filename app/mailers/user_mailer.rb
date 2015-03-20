class UserMailer < ApplicationMailer
	default from: 'apptomovil2015@gmail.com'
 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Bienvenido a Apptomovil')
  end
end
