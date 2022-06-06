FactoryBot.define do
  factory :meal do
    category_id { Faker::Number.between(from: 2, to: 9)}
    food        { Faker::Food.sushi }
    calorie     { Faker::Number.between(from: 0, to: 999) }
    protein     { Faker::Number.between(from: 0, to: 999) }
    fat         { Faker::Number.between(from: 0, to: 999) }
    carbo       { Faker::Number.between(from: 0, to: 999) }
    volume      { Faker::Number.between(from: 0, to: 999) }
    association :user
    association :record
  end
end
