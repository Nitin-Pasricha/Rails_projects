class StudentsController < ApplicationController
  
  def index
    @students = Student.all

    @students = Student.paginate(:page=>params[:page])
  end

  def add_student
    if request.post?
      @student = Student.new(set_params)
      if @student.save
        redirect_to show_student_url(@student)
      else
        render :action=> :add_student
      end
    end
  end

  def show_student
    @student = Student.find(params[:id])
  end

  private
  def set_params
    params.permit(:roll_no, :name, :maths, :physics, :chemistry)
  end
end
