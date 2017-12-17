class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def show
    @student = Student.find(params[:id])
  end

  def index
    @student = Student.new
    @students = Student.all
  end

  def student_search
    @found_student = Student.search(student_params[:name])
    render 'index'
  end

  def student_params
    params.require(:student).permit(:name, :birthday, :hometown)
  end
end
