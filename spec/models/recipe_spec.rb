require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before do
    @recipe = FactoryBot.build(:recipe)
  end

  context 'マイレシピが投稿できる時' do
    it 'すべての項目が正しく入力されている' do
      expect(@recipe).to be_valid
    end
  end
  context 'マイレシピが投稿できない時' do
    it '画像が選択されていない' do
      @recipe.image = nil
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Imageを入力してください")
    end
    it 'レシピ名が未入力である' do
      @recipe.recipe_name = ""
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Recipe nameを入力してください")
    end
    it 'レシピ詳細が未入力である' do
      @recipe.text = ""
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Textを入力してください")
    end
    it 'カロリーが未入力である' do
      @recipe.calorie = ""
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Calorieを入力してください")
    end
    it 'タンパク質が未入力である' do
      @recipe.protein = ""
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Proteinを入力してください")
    end
    it '脂質が未入力である' do
      @recipe.fat = ""
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Fatを入力してください")
    end
    it '炭水化物が未入力である' do
      @recipe.carbo = ""
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Carboを入力してください")
    end
    it 'カロリーが半角数字でない' do
      @recipe.calorie = "１００"
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Calorieは半角数字で入力してください")
    end
    it 'タンパク質が半角数字でない' do
      @recipe.protein = "１００"
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Proteinは半角数字で入力してください")
    end
    it '脂質が半角数字でない' do
      @recipe.fat = "１００"
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Fatは半角数字で入力してください")
    end
    it '炭水化物が半角数字でない' do
      @recipe.carbo = "１００"
      @recipe.valid?
      expect(@recipe.errors.full_messages).to include("Carboは半角数字で入力してください")
    end
  end
end
