
class ProductsController < ApplicationController

  def index
    @products = Product.all
    @local = Product.local
    @recent = Product.most_recent
    @reviewed = Product.most_reviews
    render :index
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to landings_path  
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
    render :show
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product successfully removed!"
    redirect_to landings_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :origin, :cost)
  end

end