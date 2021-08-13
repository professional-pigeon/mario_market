require 'rails_helper'

describe "the update product process" do
  it "changes the product content" do
    Product.destroy_all
    user = User.create!(:email => 'admin@example.com', :password => 'adminthesite', :admin => true)
    login_as(user, :scope => :user)
    test_product = Product.new({:name => "Rice", :origin => "Arizona", :cost => 30})
    test_product.save
    visit product_path(test_product)
    click_on 'Edit Product Details'
    fill_in 'Name', :with => 'Zappo'
    fill_in 'Origin', :with => 'America'
    fill_in 'Cost', :with => 3.00
    click_on 'Update Product'
    expect(page).to have_content 'Zappo'
  end

  it "fails to changes the product content" do
    Product.destroy_all
    user = User.create!(:email => 'admin@example.com', :password => 'adminthesite', :admin => true)
    login_as(user, :scope => :user)
    test_product = Product.new({:name => "Rice", :origin => "Arizona", :cost => 30})
    test_product.save
    visit product_path(test_product)
    click_on 'Edit Product Details'
    fill_in 'Name', :with => 'Zappo'
    fill_in 'Origin', :with => ''
    click_on 'Update Product'
    expect(page).to have_content "Please fix these errors"
  end

  it "deletes product" do
    Product.destroy_all
    user = User.create!(:email => 'admin@example.com', :password => 'adminthesite', :admin => true)
    login_as(user, :scope => :user)
    test_product = Product.new({:name => "Rice", :origin => "Arizona", :cost => 30})
    test_product.save
    visit product_path(test_product)
    click_on 'Delete'
    expect(page).to have_content 'Product successfully removed!'
  end

end