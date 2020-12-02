class StudentMailer < ApplicationMailer


	def status_email
    @student = params[:student]
    mail(to: @student.email, subject: 'Welcome to Foradian')
  end
end
