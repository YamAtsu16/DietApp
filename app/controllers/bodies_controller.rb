class BodiesController < ApplicationController
  def index
    @bodies = Body.all
  end

  def new
    @body = Body.new
  end

  def create
    body = Body.new(body_params)
    if body.save
      redirect_to bodies_path
    else
      render :new
    end
  end

  private

  def body_params
    params.require(:body).permit(:weight, :image, :memo).merge(user_id: current_user.id)
  end

end
