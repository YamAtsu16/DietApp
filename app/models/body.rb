class Body < ApplicationRecord
  belongs_to :user
  validates :weight, presence: true
  validates :weight, numericality: true
end
