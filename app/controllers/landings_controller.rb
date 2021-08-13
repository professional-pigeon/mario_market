
class LandingsController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @products = Product.all
    @local = Product.local
    @recent = Product.most_recent
    @reviewed = Product.most_reviews
    render :index
  end
end