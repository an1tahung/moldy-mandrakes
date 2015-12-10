class SessionsController < ApplicationController
  def new
  end

def create
  student = Student.find_by(email: params[:email])
  
  if student && student.authenticate(params[:password])
    session[:student_id] = student.id
    redirect_to courses_path, notice: "Welcome back, #{student.firstname}!"
  else
    flash.now[:alert] = "Log in failed..."
    render :new
  end
end

  def destroy
    session[:student_id] = nil 
    redirect_to movies_path, notice: "Adios!"
  end
end
