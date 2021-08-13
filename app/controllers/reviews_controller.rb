class ReviewsController < ApplicationController
  before_action :only => [:edit, :destroy, :show] do
    redirect_to landings_path unless current_user && current_user.admin
  end

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review successfully created!"
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :show
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)

      redirect_to product_path(@review.product)
    else
      @product = Product.find(params[:product_id])
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @product = @review.product
    @review.destroy
    flash[:notice] = "Review successfully removed!"
    redirect_to product_path(@product)
  end

  private
    def review_params
      params.require(:review).permit(:author, :rating, :content_body)
    end
end