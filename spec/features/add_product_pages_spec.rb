require 'rails_helper'

describe "the add product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add a Product'
    fill_in 'Name', :with => 'Zappo'
    fill_in 'Origin', :with => 'America'
    fill_in 'Cost', :with => 3.00
    click_on 'Create Product'
    expect(page).to have_content 'Zappo'
  end

end