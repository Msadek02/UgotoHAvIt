class SubcategoriesController < ApplicationController
  def show
    @product = Product.order(created_at: :desc)
  end

  def new
  end

  def edit
  end

  def update
  end
end

private

def find_product
  @product = Product.find_by_id params[:id]
end

def subcategories_params
  params.require(:product).permit( :picture )
end
