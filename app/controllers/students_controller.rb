class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def search_by_name
    name = if Student.find(first_name= params[:name]).or(Student.find(last_name= params[:name]))
    end
    render json: name
  end

end
