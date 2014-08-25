# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    trait :food do
      name "x-salad"
      item_type "food"
      price 15.0
    end
    trait :drink do
      name "coke"
      item_type "drink"
      price 3.0
    end
  end
end
