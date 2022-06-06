class RecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_beginning_of_week
  before_action :get_record_current_user, only: [:index, :create]

  def index
    # @records = current_user.records
    if @records.exists?(start_time: Date.today)
      @record = @records.find_by(start_time: Date.today)
    end
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @records.find_by(start_time: @record.start_time) != nil
      registered_record = @records.find_by(start_time: @record.start_time)
      redirect_to record_path(registered_record)
    else
      @record.save
      redirect_to record_path(@record)
    end
  end

  def show
    @record = Record.find(params[:id])
    @meal = Meal.new
    @meals = @record.meals
  end

  private

  def record_params
    params.require(:record).permit(:start_time, :total_calorie, :total_protein, :total_fat, :total_carbo).merge(user_id: current_user.id)
  end

  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end

  def get_record_current_user
    @records = current_user.records
  end
end