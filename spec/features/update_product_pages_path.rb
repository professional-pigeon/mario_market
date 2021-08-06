require 'rails_helper'

describe "the update product process" do
  it "changes the product content" do
    test_product = Product.new({name: => "Rice", origin: => "Arizona", cost: => 30})
    visit products_path
    click_link 'Rice'
    click_on 'Edit Product Details'
    fill_in 'Name', :with => 'Zappo'
    fill_in 'Origin', :with => 'America'
    fill_in 'Cost', :with => 3.00
    expect(page).to have_content 'Zappo'
  end

end