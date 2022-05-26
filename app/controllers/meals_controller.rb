class MealsController < ApplicationController
  def index
    @record = Record.find_by(start_time: Date.today)
    @meals = Meal.all
  end

  def new
    @record = Record.find_by(start_time: Date.today)
    @meal = Meal.new
  end

  def create
    @record = Record.find_by(start_time: Date.today)
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to record_meals_path(@record)
    else
      @record = Record.find_by(start_time: Date.today)
      render :new
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:category_id, :eat_time_id, :food, :calorie, :protein, :fat, :carbo, :volume).merge(user_id: current_user.id, record_id: @record.id)
  end
end
