require 'rails_helper'

describe "User paths that are blocked" do
  it "put the user back on the main page if they try to navigate to the new product page" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
    login_as(user, :scope => :user)
    visit new_product_path
    expect(page).to have_content "Welcome to Mario's International Market"
  end

  it "put the user back on the main page if they try to navigate to edit a specific product" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
    login_as(user, :scope => :user)
    test_product = Product.new({:name => "Rice", :origin => "Arizona", :cost => 30})
    test_product.save
    visit edit_product_path(test_product)
    expect(page).to have_content "Welcome to Mario's International Market"
  end

  it "put the user back on the main page if they try to navigate to edit a review" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
    login_as(user, :scope => :user)
    test_product = Product.new({:name => "Rice", :origin => "Arizona", :cost => 30})
    test_product.save
    test_review = Review.new({:author => "Bob", :rating => 4, :content_body => "This thing is great, I can't believe it truly really exists", :product_id => test_product.id})
    test_review.save
    visit product_review_path(test_product, test_review)
    expect(page).to have_content "Welcome to Mario's International Market"
  end


end
    