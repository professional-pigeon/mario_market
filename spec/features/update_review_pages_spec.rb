require 'rails_helper'

describe "the update reviewprocess" do
  it "changes the review" do
    test_product = Product.new({:name => "Rice", :origin => "Arizona", :cost => 30})
    test_product.save
    test_review = Review.new({:author => "Bob", :rating => 4, :content_body => "This thing is great, I can't believe it truly really exists", :product_id => test_product.id})
    test_review.save
    visit product_path(test_product)
    click_on 'Bob'
    fill_in 'Author', :with => 'Barry'
    fill_in 'Content body', :with => 'This thing is great, I will never use another product, or even shop around for one'
    fill_in 'Rating', :with => 5
    click_on 'Update Review'
    expect(page).to have_content 'Barry'
  end

  it "deletes a review" do
    test_product = Product.new({:name => "Rice", :origin => "Arizona", :cost => 30})
    test_product.save
    test_review = Review.new({:author => "Bob", :rating => 4, :content_body => "This thing is great, I can't believe it truly really exists", :product_id => test_product.id})
    test_review.save
    visit product_review_path(test_product, test_review)
    click_on 'Delete'
    expect(page).to have_content 'Review successfully removed!'
  end

end