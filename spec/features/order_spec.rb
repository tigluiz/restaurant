require 'rails_helper'
describe "Finalize order" do
  before :each do
    @item = FactoryGirl.create(:item,:food)
  end
  scenario "When all params are correct",js: true do
    visit new_cart_path
    click_on("Adicionar item")
    click_button('submit')
    click_link('Finalizar pedido')
    expect(Cart.count).to eql(1)
  end
end
