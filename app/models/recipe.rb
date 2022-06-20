class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  validates :recipe_name, :image, :text, :calorie, :protein, :fat, :carbo, presence: true
  validates :calorie, :protein, :fat, :carbo, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 , message: "は半角数字で入力してください"},format: { with: /\A[0-9]+\z/ }
end
