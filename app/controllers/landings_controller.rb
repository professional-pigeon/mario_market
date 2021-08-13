
class LandingsController < ApplicationController
  def index
    @products = Product.all
    @local = Product.local
    @recent = Product.most_recent
    @reviewed = Product.most_reviews
    render :index
  end
end