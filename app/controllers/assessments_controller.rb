class AssessmentsController < ApplicationController
  before_action :get_course
  skip_before_action :require_login, only: [:index, :show]

  def get_course
    @course = Course.find(params[:course_id])
  end

  def index
    @assessments = @course.assessments
  end

  def show
    @assessment = @course.assessments.find(params[:id])
    @grades = @assessment.grades
    @min_grade = @grades.minimum(:grade)
    @max_grade = @grades.maximum(:grade)
    @avg_grade = @grades.average(:grade)
  end

  def new
    @assessment = @course.assessments.build
  end

  def create
    @assessment = @course.assessments.build(assessment_params)
    if @course.assessments << @assessment
      flash[:notice] = "#{@assessment.name} was successfully created."
      redirect_to course_assessments_path(@course)
    else
      render 'new'
    end
  end

  def edit
    @assessment = @course.assessments.find(params[:id])
  end

  def update
    @assessment = @course.assessments.find(params[:id])
    if @assessment.update assessment_params
      flash[:notice] = "#{@assessment.name} was successfully updated."
      redirect_to course_assessments_path(@course)
    else
      render 'edit'
    end
  end

  def destroy
    @assessment = @course.assessments.find(params[:id])
    @assessment.destroy
    flash[:notice] = "Assessment '#{@assessment.name}' deleted."
    redirect_to course_assessments_path(@course)
  end

  def assessment_params
    params.require(:assessment).permit(:name, :weight)
  end
end
