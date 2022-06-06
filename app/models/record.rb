class Record < ApplicationRecord
  has_many :meals
  belongs_to :user

  validates :start_time, presence: true
end
