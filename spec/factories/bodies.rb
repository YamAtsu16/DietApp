FactoryBot.define do
  factory :body do
    start_time  { Faker::Date.birthday(min_age: 1, max_age: 100) }
    weight      { Faker::Number.between(from: 0, to: 999) }
    association :user
  end
end
