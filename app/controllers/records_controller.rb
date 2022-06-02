class RecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_beginning_of_week

  def index
    @records = Record.all
    if Record.exists?(start_time: Date.today)
      @record = Record.find(Date.today)
    end
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if Record.exists?(start_time: @record.start_time)
      redirect_to record_path(@record)
    else
      @record.save
      redirect_to record_path(@record)
    end
  end

  def show
    @record = Record.find(params[:id])
    @meal = Meal.new
    @meals = @record.record_dates.all
  end

  private

  def record_params
    params.require(:record).permit(:start_time, :total_calorie, :total_protein, :total_fat, :total_carbo).merge(user_id: current_user.id)
  end

  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end
end