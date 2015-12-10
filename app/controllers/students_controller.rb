class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      session[:student_id] = @student.id
      redirect_to courses_path, notice: "Welcome aboard, #{@student.firstname}"
    else
      render :new
    end
  end

  protected

  def student_params
    params.require(:student).permit(:email, :firstname, :lastname, :password, :password_confirmation)
  end

end