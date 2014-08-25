require 'rails_helper'

RSpec.describe OrderController, :type => :controller do
  let(:order) {FactoryGirl.create(:order)}

  describe "GET new" do
    it "returns http success" do
      get :show, {id: order.id}
      expect(response).to be_success
    end
  end

  describe "POST create" do
    let(:cart) {FactoryGirl.create(:cart, :with_items)}
    it "create order" do
      expect{
        post :create, {cart_id: cart.id}
      }.to change(Order, :count).by(1)
    end
  end
end
