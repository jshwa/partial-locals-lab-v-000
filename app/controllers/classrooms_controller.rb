class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @students = @classroom.students
    raise @students.inspect
  end

  def index
    @classrooms = Classroom.all
  end
end
