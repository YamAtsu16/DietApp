class BodiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_beginning_of_week

  def index
    @bodies = current_user.bodies
  end

  def new
    @body = Body.new
  end

  def create
    body = Body.new(body_params)
    if body.valid?
      if Body.exists?(start_time: body.start_time)
        existing_data = Body.find_by(start_time: body.start_time)
        existing_data.update(body_params)
        redirect_to bodies_path
      else
        body.save
        redirect_to bodies_path
      end
    else
      render :new
    end
  end

  private

  def body_params
    params.require(:body).permit(:start_time, :weight).merge(user_id: current_user.id)
  end

  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end

end
