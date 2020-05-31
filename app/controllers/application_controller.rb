class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :set_current_user

  def require_login
    unless logged_in?
      flash[:error] = 'You must log in first!'
      redirect_to login_path
    end
  end

  def require_instructor_type
    unless instructor_type?
      flash[:error] = 'Insufficient privileges to perform this operation!'
      redirect_to login_path
    end
  end

  def set_current_user
    if session[:user_id]
      if session[:user_type] == 'instructor'
        @current_user = Instructor.find session[:user_id]
      elsif session[:user_type] == 'student'
        @current_user = Student.find session[:user_id]
      else
        @current_user = nil
      end
    end
  end

  private

  def logged_in?
    session[:user_id]
  end

  def instructor_type?
    session[:user_type] == 'instructor'
  end

end
