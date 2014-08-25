require 'rails_helper'
describe CartManager do
  context "without cart" do
    it "returns false" do
      expect(described_class.new([]).perform).to eql(false)
    end
  end
  context "without cart items" do
    let(:cart) {FactoryGirl.build(:cart)}
    it "returns false" do
      expect(described_class.new(cart).perform).to eql(false)
    end
  end
  context "with valid cart" do
    let(:food) {FactoryGirl.create(:item,:food)}
    before :each do
      @cart = FactoryGirl.build(:cart) 
      @cart.cart_items << FactoryGirl.build(:cart_item, genre: food.id)
    end
    it "returns true when success" do
      expect(described_class.new(@cart).perform).to eql(true)
    end
    it "create cart" do
      expect{described_class.new(@cart).perform}.to change{Cart.count}.from(0).to(1)
    end
    it "create cart item" do
      expect{described_class.new(@cart).perform}.to change{CartItem.count}.from(0).to(1)
    end
    it "cart item have same price of food" do
      described_class.new(@cart).perform
      expect(@cart.cart_items.first.price).to eql(food.price)
    end
    it "cart item have same name of food" do
      described_class.new(@cart).perform
      expect(@cart.cart_items.first.name).to eql(food.name)
    end
    it "cart item have same type of food" do
      described_class.new(@cart).perform
      expect(@cart.cart_items.first.name).to eql(food.name)
    end
  end
end
