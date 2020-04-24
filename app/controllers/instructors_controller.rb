class InstructorsController < ApplicationController
  def instructor_params
    params.require(:instructor).permit(:name, :lastname, :email, :password)
  end
  def show
    id = params[:id]
    @instructor = Instructor.find params[:id]
  end

  def edit
    @instructor = Instructor.find params[:id]
  end

  def update
    @instructor = Instructor.find params[:id]

    if @instructor.update_attributes instructor_params
      flash[:notice] = "Your profile was successfully updated."
      redirect_to instructor_path(@instructor)
    else
      render 'edit'
    end
  end
end