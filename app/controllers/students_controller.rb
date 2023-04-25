class StudentsController < ApplicationController

  def index
    if params[:name]
      students = Student.where(last_name: params[:name].capitalize()).or(Student.where(first_name: params[:name].capitalize()))
    else
      students = Student.all
    end
    
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

end
