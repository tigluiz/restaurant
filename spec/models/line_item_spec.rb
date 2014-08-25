require 'rails_helper'

RSpec.describe LineItem, :type => :model do
  it { should belong_to(:order) }
  it { should validate_presence_of(:food_type) }
  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:price) }
end
