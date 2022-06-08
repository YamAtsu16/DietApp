require 'rails_helper'

RSpec.describe Meal, type: :model do
  before do
    @meal = FactoryBot.build(:meal)
  end

  context '記録を登録できる時' do
    it '正しく情報を入力すれば記録を登録できる' do
      expect(@meal).to be_valid
    end
  end
  context '記録を登録できない時' do
    it '分類に「--」を選択していると登録できない' do
      @meal.category_id = 1
      @meal.valid?
      expect(@meal.errors.full_messages).to include("分類を入力してください")
    end
    it '食品が空だと登録できない' do
      @meal.food = ""
      @meal.valid?
      expect(@meal.errors.full_messages).to include("食品名を入力してください")
    end
    it '摂取量が空だと登録できない' do
      @meal.volume = ""
      @meal.valid?
      expect(@meal.errors.full_messages).to include("摂取量を入力してください")
    end
    it 'カロリーが空だと登録できない' do
      @meal.calorie = ""
      @meal.valid?
      expect(@meal.errors.full_messages).to include("カロリーの値を入力してください")
    end
    it 'タンパク質が空だと登録できない' do
      @meal.protein = ""
      @meal.valid?
      expect(@meal.errors.full_messages).to include("タンパク質の値を入力してください")
    end
    it '脂質が空だと登録できない' do
      @meal.fat = ""
      @meal.valid?
      expect(@meal.errors.full_messages).to include("脂質の値を入力してください")
    end
    it '炭水化物が空だと登録できない' do
      @meal.carbo = ""
      @meal.valid?
      expect(@meal.errors.full_messages).to include("炭水化物の値を入力してください")
    end
    it '摂取量が半角数字でないと登録できない' do
      @meal.volume = "１００"
      @meal.valid?
      expect(@meal.errors.full_messages).to include("摂取量は半角数字で入力してください")
    end
    it 'カロリーが半角数字でないと登録できない' do
      @meal.calorie = "１００"
      @meal.valid?
      expect(@meal.errors.full_messages).to include("カロリーの値は半角数字で入力してください")
    end
    it 'タンパク質が半角数字でないと登録できない' do
      @meal.protein = "１００"
      @meal.valid?
      expect(@meal.errors.full_messages).to include("タンパク質の値は半角数字で入力してください")
    end
    it '脂質が半角数字でないと登録できない' do
      @meal.fat = "１００"
      @meal.valid?
      expect(@meal.errors.full_messages).to include("脂質の値は半角数字で入力してください")
    end
    it '炭水化物が半角数字でないと登録できない' do
      @meal.carbo = "１００"
      @meal.valid?
      expect(@meal.errors.full_messages).to include("炭水化物の値は半角数字で入力してください")
    end
  end
end
