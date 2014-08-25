require 'rails_helper'
describe OrderManager do
  context "invalid scenario" do
    it "returns false when cart doesn't have items" do
      expect(described_class.new(Cart.new).perform).to eql(false)
    end
  end
  context "with valid params" do
    before :each do
      @cart = FactoryGirl.build(:cart)
      @cart.cart_items << FactoryGirl.build(:cart_item, price: 15.0)
      @cart.cart_items << FactoryGirl.build(:cart_item, price: 4.5)
    end
    it "increase order count" do
      expect{described_class.new(@cart).perform}.to change{Order.count}.from(0).to(1)
    end
    it "create line items" do
      expect{described_class.new(@cart).perform}.to change{LineItem.count}.from(0).to(2)
    end
  end
end
