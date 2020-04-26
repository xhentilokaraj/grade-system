class GradesController < ApplicationController
  before_action :get_course, :get_course_assessments, :get_enrollment, :get_student
  before_action :set_grade, only: [:edit, :update, :destroy]
  before_action :get_assessment, only: [:create, :update]

  def set_grade
    @grade = Grade.find(params[:id])
  end

  def get_enrollment
    @enrollment = Enrollment.find(params[:enrollment_id])
  end

  def get_student
    @student = @enrollment.student
  end

  def get_course_assessments
    @assessments = @course.assessments
  end

  def get_course
    @course = Course.find(params[:course_id])
  end

  def get_assessment
    @assessment = Assessment.find(params[:assessment])
  end

  def grade_params
    params.require(:grade)
    params[:grade].permit(:assessment, :grade)
  end

  def index
    @grades = @enrollment.grades
    @overall_grade = @grades.map {|grade| (grade.grade * grade.assessment.weight).round(2) }.sum().round(2)
  end

  def new
    @grade = @enrollment.grades.build
  end

  def create
    @assessment.grades << @enrollment.grades.build(grade_params)
    redirect_to course_enrollment_grades_path(@course, @enrollment)
  end

  def edit
  end

  def update
    if @grade.update_attributes grade_params
      flash[:notice] = "Grade for #{@grade.assessment.name} was successfully updated."
      redirect_to course_enrollment_grades_path(@course, @enrollment)
    else
      render 'edit'
    end
  end

  def destroy
    @grade.destroy
    flash[:notice] = "Grade was successfully removed."
    redirect_to course_enrollment_grades_path(@course, @enrollment)
  end
end
