FactoryGirl.define do
  factory :order do
    state "created"
    table "42"
    trait :with_items do
      after(:create) do |instance|
        create_list :item, 2, orders: [instance]
      end
    end
  end
end
