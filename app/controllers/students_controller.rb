class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    if !@student.active
      @student.update(active: true)
      redirect_to student_path
    else
      @student.update(active: false)
      redirect_to student_path
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
