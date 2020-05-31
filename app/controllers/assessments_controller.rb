class AssessmentsController < ApplicationController
  before_action :get_course
  before_action :set_assessment, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login, only: [:index, :show]

  def get_course
    @course = Course.find(params[:course_id])
  end

  def set_assessment
    @assessment = @course.assessments.find(params[:id])
  end

  def index
    @assessments = @course.assessments
  end

  def show
    @grades = @assessment.grades
    @min_grade = @grades.minimum(:grade)
    @max_grade = @grades.maximum(:grade)
    @avg_grade = @grades.average(:grade)
  end

  def new
    @assessment = @course.assessments.build
  end

  def create
    @course.assessments << @course.assessments.build(assessment_params)
    redirect_to course_assessments_path(@course)
  end

  def edit
  end

  def update
    if @assessment.update assessment_params
      flash[:notice] = "#{@assessment.name} was successfully updated."
      redirect_to course_assessments_path(@course)
    else
      render 'edit'
    end
  end

  def destroy
    @assessment.destroy
    flash[:notice] = "Assessment '#{@assessment.name}' deleted."
    redirect_to course_assessments_path(@course)
  end

  def assessment_params
    params.require(:assessment).permit(:name, :weight)
  end
end
