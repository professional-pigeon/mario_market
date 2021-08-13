require 'rails_helper'

describe "test log_in" do
  it "will display the user logged in" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
    login_as(user, :scope => :user)
    visit landings_path
    expect(page).to have_content 'test@example.com'
  end

  it "will log a user out and tell you you've done it successfully" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
    login_as(user, :scope => :user)
    visit landings_path
    click_on "Sign out"
    expect(page).to have_content "Signed out successfully"
  end

  it "will create a new user and tell you you've created a new user" do
    visit landings_path
    click_on "Sign up"
    fill_in "Email", :with => 'Rice@rice.com'
    fill_in "Password", :with => 'RiceIsNice'
    fill_in "Password confirmation", :with => 'RiceIsNice'
    click_on 'Sign up!'
    expect(page).to have_content 'rice@rice.com'
    expect(page).to have_content "Welcome! You have signed up successfully"
  end

end