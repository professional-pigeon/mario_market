require 'rails_helper'

describe "the add product process" do
  it "adds a new product" do
    visit landings_path
    click_link 'Add a Product'
    fill_in 'Name', :with => 'Zappo'
    fill_in 'Origin', :with => 'America'
    fill_in 'Cost', :with => 3.00
    click_on 'Create Product'
    expect(page).to have_content 'Zappo'
    expect(page).to have_content 'Product successfully added!'
  end
  
  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end