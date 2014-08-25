# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cart_item do
    quantity 1
    cart nil
    genre "Ms"
    price 0.0
    name "salad"
    item_type "food"
  end
end
