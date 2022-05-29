class MealsController < ApplicationController

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      put_data
      redirect_to record_path(@meal.record_date_id)
    else
      @record = Record.find(params[:record_id])
      redirect_to record_path(@record)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def meal_params
    params.require(:meal).permit(:category_id, :eat_time_id, :food, :calorie, :protein, :fat, :carbo, :volume).merge(user_id: current_user.id, record_date_id: params[:record_id])
  end

  def put_data
    record = Record.find(params[:record_id])
    meal =  record.record_dates

    # カロリー 合計
    calorie = meal.pluck(:calorie)
    total_calorie = calorie.sum
    record.total_calorie = total_calorie

    # タンパク質 合計
    protein = meal.pluck(:protein)    
    total_protein = protein.sum
    record.total_protein = total_protein

    # 脂質 合計
    fat = meal.pluck(:fat)
    total_fat = fat.sum
    record.total_fat = total_fat
    
    # 炭水化物 合計
    carbo = meal.pluck(:carbo)
    total_carbo = carbo.sum
    record.total_carbo = total_carbo

    record.save
  end

  def delete_data
  end

end