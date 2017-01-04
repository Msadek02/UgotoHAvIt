class HomesController < ApplicationController
	def index
		@products = Product.order(created_at: :desc)
		@categories = Category.all
		@subcategories = Subcategory.all
	end
end