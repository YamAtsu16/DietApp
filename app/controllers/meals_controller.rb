class MealsController < ApplicationController

  def create
    binding.pry
    record = Record.find(params[:id])
    meal = Meal.new(meal_params)
    if @meal.save
      redirect_to "/records/#{meal.record_date}"
    else
      render "record/show"
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:category_id, :eat_time_id, :food, :calorie, :protein, :fat, :carbo, :volume).merge(user_id: current_user.id, record_date_id: @record.id)
  end

end
