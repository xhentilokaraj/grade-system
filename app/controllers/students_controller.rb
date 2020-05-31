class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def set_student
    @student = Student.find params[:id]
  end

  def student_params
    params.require(:student).permit(:name, :lastname, :email, :password)
  end

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create student_params
    if @student.save
      flash[:notice] = "#{@student.name} #{@student.lastname} was successfully created."
      redirect_to students_path
    else
      # note, 'new' template can access @movie's field values!
      render 'new'
    end
  end

  def edit
  end

  def update
    if @student.update_attributes student_params
      flash[:notice] = @student.name + ' ' + @student.lastname + " was successfully updated."
      redirect_to students_path
    else
      render 'edit'
    end
  end

  def destroy
    @student.destroy
    flash[:notice] = "Student '#{@student.name} #{@student.lastname}' deleted."
    redirect_to students_path
  end

  def home
    @enrollments = @current_user.enrollments
  end
end