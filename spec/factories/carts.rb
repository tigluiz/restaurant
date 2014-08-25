# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cart do
    table "1"
    trait :with_items do
      after(:build) do |instance|
        create_list :cart_item, 2, cart: instance
      end
    end
  end
end
