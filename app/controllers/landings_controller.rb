
class LandingsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  def index
    @products = Product.all
    @local = Product.local
    @recent = Product.most_recent
    @reviewed = Product.most_reviews
    render :index
  end
end