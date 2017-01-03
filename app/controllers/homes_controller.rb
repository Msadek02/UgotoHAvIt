class HomesController < ApplicationController
	def index
		@products = Product.order(created_at: :desc)
		@categories = Category.all
	end
end