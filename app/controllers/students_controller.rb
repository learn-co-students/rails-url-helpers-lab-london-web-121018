class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    # set_student
    # byebug
    # @student = Student.find(params[:id])
  end

  def activate
    student = set_student
    student.update(active: !student.active)

    # byebug
    redirect_to "/students/#{params[:id]}"
  end

  private

    def set_student
      # byebug
      @student = Student.find(params[:id])
    end
end