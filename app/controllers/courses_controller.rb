class CoursesController < ApplicationController
  def index
    @courses = Course.all 
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new 
  end

  def edit
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to courses_path, notice: "#{@course.title} was submitted successfully!"
    else
      render :new
    end
  end

  def update 
    @course = Course.find(params[:id])

    if @course.update_attributes(course_params)
      redirect_to course_path(@course)
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end

  protected

  def course_params
    params.require(:course).permit(
      :title, :professor, :poster_image, :description  
    )
  end
end
