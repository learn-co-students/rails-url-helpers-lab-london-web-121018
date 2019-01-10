class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

    def activate
      @student = Student.find(params[:id])
      if @student.active == false
        @student.active = true
      elsif @student.active == true
        @student.active = false
      end
      @student.save
      redirect_to student_path(@student)
    end

end
