FactoryBot.define do
  factory :recipe do
    recipe_name { Faker::Name.name }
    text        { Faker::Lorem.sentence }
    calorie     { Faker::Number.between(from: 0, to: 999) }
    protein     { Faker::Number.between(from: 0, to: 999) }
    fat         { Faker::Number.between(from: 0, to: 999) }
    carbo       { Faker::Number.between(from: 0, to: 999) }
    association :user

    after(:build) do |recipe|
      recipe.image.attach(io: File.open('public/images/food.png'), filename: 'food.png')
    end
  end
end
