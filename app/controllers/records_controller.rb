class RecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_beginning_of_week

  def index
    @record = Record.find_by(start_time: Date.today)
  end

  def new
    @record = Record.new
    @today = Date.today
  end

  def create
    @record = Record.new(record_params)
    @record.save
    redirect_to record_meals_path(@record)
  end

  private

  def record_params
    params.require(:record).permit(:start_time, :total_calorie, :total_protein, :total_fat, :total_carbo).merge(user_id: current_user.id)
  end

  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end
end