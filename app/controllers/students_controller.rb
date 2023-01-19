class StudentsController < ApplicationController
# $name = siddharth


  def index
    student = Student.all
    render json: student
  end

  def show
   # byebug
    render json: @student
  end

  def create
    @student = Student.create(fname:params[:fname],email:params[:email],password:params[:password],image:params[:image])
    render json: @student
  end

  def update
    @student.update(fname:params[:fname],email:params[:email],password:params[:password],image:params[:image])
    render json: @student
  end

  def destroy
    @student.destroy
    render json: @student
  end

  private

  def find
    @student = Student.find_by_id(params[:id])
  end

end
