class CollagesController < ApplicationController

  def index
    @collage = Collage.all
    render json: @collage
  end

  def show
    @collage = Collage.find_by_id(params[:id])
    render json: @collage
  end

  def create
    @collage = Collage.create(collage_params)
    if
      render json: @collage
    end
  end

  def update
    @collage = Collage.find_by_id(params[:id])
    @collage.update!(collage_params)
    render json: @collage
  end
  private
  def collage_params
    params.permit(:name, :course_name, :year, :student_id)
  end
end
