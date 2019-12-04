Spree::ProductsController.class_eval do 
	before_action :load_bid, only: [:show]

	def load_bid
		@bid = Spree::Bid.new() 
	end
end