class PostMailer < ApplicationMailer
  def send_mail(email, arr)
@arr = arr


    mail to: email, subject: "Test"
  end
end


