class MealsController < ApplicationController

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      add_data
      redirect_to record_path(@meal.record_date_id)
    else
      @record = Record.find(params[:record_id])
      redirect_to record_path(@record)
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:category_id, :eat_time_id, :food, :calorie, :protein, :fat, :carbo, :volume).merge(user_id: current_user.id, record_date_id: params[:record_id])
  end

  def add_data
    record = Record.find(params[:record_id])

    record.total_calorie += @meal.calorie
    record.total_protein += @meal.protein
    record.total_fat += @meal.fat
    record.total_carbo += @meal.carbo
    record.save
  end

end