require 'rails_helper'
describe "Create a cart with success" do
  before :each do
    @item = FactoryGirl.create(:item,:food)
  end
  scenario "When all params are correct",js: true do
    visit new_cart_path
    expect(page).to have_content(@item.name)
    click_on("Adicionar item")
    click_button('submit')
    expect(page).to have_content(@item.name)
    expect(Cart.count).to eql(1)
  end
end
