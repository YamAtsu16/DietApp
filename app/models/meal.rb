class Meal < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :eat_time

  belongs_to :user
  belongs_to :record

  validates :category_id, :eat_time_id, :food, :volume, :calorie, :protein, :fat, :carbo, presence: true
  validates :calorie, :protein, :fat, :carbo, :volume, format: {with: /\A[0-9]+\z/}
  validates :category_id, :eat_time_id, numericality: {other_than: 1}
end
