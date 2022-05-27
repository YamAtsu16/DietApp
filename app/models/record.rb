class Record < ApplicationRecord
  self.primary_key = :start_time
    
  has_many :record_dates, class_name: "Meal", foreign_key: "record_date_id"
  belongs_to :user

  validates :start_time, presence: true
end
