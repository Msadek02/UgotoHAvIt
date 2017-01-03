class ProductsController < ApplicationController

  before_action :find_product, only: [:edit, :update, :destroy]

  def new 
    @product = Product.new 
  end

  def create
    @product = Product.new(product_prams)
    if @product.save
      redirect_to products_path
    else
      render "new"
    end
  end

  def update
    if @product.update(product_params)
      redirect_to products_path
    else
      render "edit"
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  def index
    @products = Product.order(created_at: :desc)
  end

end

private

  def find_product
    @product = Product.find_by_id params[:id]
  end

def product_params
   params.require(:product).permit(:name, :description, :price, :inventory, :picture, :tag_list)
end