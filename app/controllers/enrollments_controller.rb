class EnrollmentsController < ApplicationController
  before_action :get_course, :get_students

  def get_students
    @students = Student.all
  end

  def get_course
    @course = Course.find(params[:course_id])
  end

  def index
    @enrollments = @course.enrollments
    # @students = Student.select("id", "name", "lastname")
  end

  def new
    @enrollment = @course.enrollments.build
  end

  def create
    @student = Student.find(params[:student])
    @student.enrollments << @course.enrollments.build
    redirect_to course_enrollments_path(@course)
  end

  def destroy
    @enrollment = @course.enrollments.find(params[:id])
    @enrollment.destroy
    flash[:notice] = "#{@enrollment.student.name} #{@enrollment.student.lastname} removed."
    redirect_to course_enrollments_path(@course)
  end

end
