class CoursesController < ApplicationController
  
    def index
      @courses = Course.all
    end
  
    def show
      @course = Course.find params[:id]
    end
  
    def new
      @course = Course.new
    end
  
    def create
      @course = Course.create! course_params
      if @course.save
        flash[:notice] = "#{@course.name} was successfully created."
        redirect_to courses_path
      else
        # note, 'new' template can access @course's field values!
        render 'new'
      end  
    end
  
    def edit
      @course = Course.find params[:id]
    end
  
    def update
      @course = Course.find params[:id]
  
      if @course.update_attributes course_params
        flash[:notice] = "#{@course.name} was successfully updated."
        redirect_to course_path(@course)
      else
        # note, 'edit' template can access @movie's field values!
        render 'edit'
      end  
    end
  
    def destroy
      @course = Course.find(params[:id])
      @course.destroy
      flash[:notice] = "Course '#{@course.name}' deleted."
      redirect_to courses_path
    end
  
    private
    def course_params
      params.require(:course)
      params[:course].permit(:code,:name,:semester,:catalog_data)
    end
  end