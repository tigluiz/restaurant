require 'rails_helper'

RSpec.describe CartsController, :type => :controller do
  let(:valid_attributes) {
    {"cart" => {"cart_items_attributes"=> {"1408905884861"=>{"genre"=>"1", "quantity"=>"1", "_destroy"=>"false"},
     "1408906163160"=>{"genre"=>"3", "quantity"=>"2", "_destroy"=>"false"}}}}
  }
  let(:valid_session) { {} }
  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response.status).to eql 200
    end
  end

  describe "GET create" do
    it "returns http success" do
      expect {
      post :create, valid_attributes, valid_session
      }.to change(Cart, :count).by(1)
    end

    it "returs http failure" do
      expect {
      post :create, {"cart" => {"bla" => "flo"}}, valid_session
      }.to change(Cart, :count).by(0)
    end
  end

end
