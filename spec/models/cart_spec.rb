require 'rails_helper'

RSpec.describe Cart, :type => :model do
  it { should have_many(:cart_items) }

  describe "#total" do
    before do
      @cart = FactoryGirl.build(:cart)
      @cart.cart_items << FactoryGirl.build(:cart_item, price: 15.0)
      @cart.cart_items << FactoryGirl.build(:cart_item, price: 4.5)
    end
    context "when there is only one from items" do
      it "return cart's total" do
        expect(@cart.total).to eql 19.5
      end
    end
    context "when there are different quantities" do
      before do
        @cart = FactoryGirl.build(:cart)
        @cart.cart_items << FactoryGirl.build(:cart_item, price: 15.0, quantity: 2)
        @cart.cart_items << FactoryGirl.build(:cart_item, price: 4.5)
      end
      it "return cart's total" do
        expect(@cart.total).to eql 34.5
      end
    end
  end
end
