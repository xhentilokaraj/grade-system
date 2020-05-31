class SessionsController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    email = params[:user][:email]
    password = params[:user][:password]
    @instructor = Instructor.find_by_email_and_password email, password
    @student = Student.find_by_email_and_password email, password
    if @instructor
      session[:user_id] = @instructor.id
      session[:user_type] = 'instructor'
      redirect_to instructors_main_path
    elsif @student
      session[:user_id] = @student.id
      session[:user_type] = 'student'
      redirect_to students_main_path
    else
      flash[:warning] = 'Login failed, please try again!'
      redirect_to login_path
    end
  end

  def destroy
    session.delete :user_id
    session.delete :user_type
    flash[:notice] = 'Logged out successfully!'
    redirect_to welcome_path
  end
end