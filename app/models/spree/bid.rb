module Spree
	class Bid < Spree::Base
		belongs_to :store
		belongs_to :product
		belongs_to :user

		MAXIMUM_AMOUNT = BigDecimal('99_999_999.99')
		validates :amount, allow_nil: true, numericality: {
	      greater_than_or_equal_to: 0,
	      less_than_or_equal_to: MAXIMUM_AMOUNT
	    }
		extend DisplayMoney
    	money_methods :amount

    	def change_state_active
    		if self.accepted
	    		@bids = Spree::Bid.where(product_id: self.product_id)
	    		product = Spree::Product.find_by(id: self.product_id)
	    		product.update_attributes(available_on: nil)
				@bids.each do |b|
					b.update_attributes(active: false) if self.id != b.id
				end
			end
		end
	end
end