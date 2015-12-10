class ReviewsController < ApplicationController

  before_filter :load_course
  before_filter :restrict_access

  def new
    @review = @course.reviews.build
  end

  def create
    @review = @course.reviews.build(review_params)
    @review.student_id = current_student.id

    if @review.save
      redirect_to @course, notice: "Review created successfully"
    else
      render :new
    end
  end

  protected

  def review_params
    params.require(:review).permit(:text, :rating_out_of_ten)
  end

  def load_course
    @course = Course.find(params[:course_id])
  end
end
