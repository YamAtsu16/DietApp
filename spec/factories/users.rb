FactoryBot.define do
  factory :user do
    name                  {Faker::Name.name}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password}
    password_confirmation {password}
    birthday              {Faker::Date.birthday(min_age: 1, max_age: 99)}
    age                   {Faker::Number.between(from: 1, to: 99)}
  end
end