class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  validates :recipe_name, :calorie, :protein, :fat, :carbo, presence: true
end
