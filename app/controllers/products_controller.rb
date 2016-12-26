class ProductsController < ApplicationController

	def new 
		@product = Product.new 
	end

	def index
	end

	def create
    @product = Product.new(product_prams)
    if @product.save
      redirect_to products_path
    else
      render "new"
    end
  end

  def show
  	@products = Product.order(created_at: :desc)
  end
end

private

def product_prams
   params.require(:product).permit(:name, :description, :price, :inventory, :picture)
end