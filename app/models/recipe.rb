class Recipe < ApplicationRecord
  belongs_to :user
  validates :recipe_name, :calorie, :protein, :fat, :carbo, presence: true
end
