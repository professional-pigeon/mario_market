class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    else
      redirect_to product_path(@product)
      # redirect_to new_product_review_path(@product)
    end
  end

  def show
    @product = Product.find(params[:product_id])
    @reviews = Review.find(params[:id])
    render :show
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :edit
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      # flash[:notice] = "Ingredient successfully updated!"
      redirect_to product_path(@review.product)
    else
      @product = Product.find(params[:product_id])
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    # flash[:notice] = "Ingredient successfully destroyed!"
    redirect_to product_path(@review.products)
  end

  private
    def review_params
      params.require(:review).permit(:author, :rating, :content_body)
    end
end