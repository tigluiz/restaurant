require 'rails_helper'

RSpec.describe Order, :type => :model do
  it { should validate_presence_of(:table) }
  it { should have_and_belong_to_many(:sandwiches) }

  it "set number on create" do
    order = FactoryGirl.create(:order, id: "123")
    expect(order.number).to eql(3873)
  end
end
