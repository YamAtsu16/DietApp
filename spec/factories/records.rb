FactoryBot.define do
  factory :record do
    start_time     { Faker::Date.birthday(min_age: 1, max_age: 100) }
    total_calorie  { 0 }
    total_protein  { 0 }
    total_fat      { 0 }
    total_carbo    { 0 }
    association :user
  end
end
