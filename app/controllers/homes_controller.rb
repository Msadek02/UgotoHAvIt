class HomesController < ApplicationController
	def index
		@products = Product.order(created_at: :desc)
	end
end