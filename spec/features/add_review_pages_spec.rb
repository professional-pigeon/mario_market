require 'rails_helper'

describe "the add review process" do
  it "adds a new review to a product" do
    Product.destroy_all
    test_product = Product.new({:name => "Rice", :origin => "Arizona", :cost => 30})
    test_product.save
    visit product_path(test_product)
    click_link 'Add a Review'
    fill_in 'Author', :with => 'Barry'
    fill_in 'Content body', :with => 'This thing is great, I will never use another product, or even shop around for one'
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'Barry'
    expect(page).to have_content 'Review successfully created!'
  end

  it "gives an error when no fields are entered is entered" do
    test_product = Product.new({:name => "Rice", :origin => "Arizona", :cost => 30})
    test_product.save
    visit product_path(test_product)
    click_link 'Add a Review'
    click_on 'Create Review'
    expect(page).to have_content "Author can't be blank"
  end
  
end