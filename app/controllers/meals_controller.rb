class MealsController < ApplicationController

  def new
    @record = Record.find(params[:record_id])
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      add_data
      redirect_to record_path(@meal.record_id)
    else
      @record = Record.find(params[:record_id])
      render :new
    end
  end

  def destroy
    meal = Meal.find(params[:record_id])
    delete_data
    redirect_to record_path(meal.record_id)
  end

  private

  def meal_params
    params.require(:meal).permit(:category_id, :food, :calorie, :protein, :fat, :carbo, :volume).merge(user_id: current_user.id, record_id: params[:record_id])
  end

  def add_data
    record = Record.find(params[:record_id])

    record.total_calorie += @meal.calorie
    record.total_protein += @meal.protein
    record.total_fat += @meal.fat
    record.total_carbo += @meal.carbo
    record.save
  end

  def delete_data
    meal = Meal.find(params[:record_id])
    record = Record.find(params[:id])

    record.total_calorie -= meal.calorie
    record.total_protein -= meal.protein
    record.total_fat -= meal.fat
    record.total_carbo -= meal.carbo
    record.save
    meal.destroy
  end

end