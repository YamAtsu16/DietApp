class Record < ApplicationRecord
  has_many :meals, dependent: :destroy
  belongs_to :user

  validates :start_time, presence: true
end
