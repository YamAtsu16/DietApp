class Meal < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  belongs_to :user
  belongs_to :record

  validates :category_id, :food, :volume, :calorie, :protein, :fat, :carbo, presence: true
  validates :calorie, :protein, :fat, :carbo, :volume, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 , message: "は半角数字で入力してください"},format: { with: /\A[0-9]+\z/ }
  validates :category_id, numericality: {other_than: 1, message: "を入力してください"}
end
