require 'rails_helper'

RSpec.describe Item, :type => :model do
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:item_type) }

  context "#scopes" do
    let(:food) {FactoryGirl.create(:item,:food)}
    let(:drink) {FactoryGirl.create(:item,:drink)}
    it "return only foods" do
      expect(described_class.foods).to match_array(food)
    end
    it "return only drinks" do
      expect(described_class.drinks).to match_array(drink)
    end
  end
end
