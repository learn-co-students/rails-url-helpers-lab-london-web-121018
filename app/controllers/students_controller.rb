class StudentsController < ApplicationController
  before_action :set_student, only: [:show,:activate]

  def index
    @students = Student.all
  end

  def show
    # @student = Student.find(params[:id])
    set_student
    # binding.pry
  end

  def edit
    @student = set_student

    @student = Student.find(params[:id])
    # binding.pry
     @student.active ? @student.update(active:false ) : @student.update(active:true)


    # binding.pry
    redirect_to :action => "show", :id => @student.id
  end

  def update

  end



  private

    def set_student
      @student = Student.find(params[:id])
    end
end
