require 'rails_helper'

RSpec.describe Sandwich, :type => :model do
  it { should validate_presence_of(:quantity) }
  it { should validate_presence_of(:name) }
  it { should have_and_belong_to_many(:orders) }
end
