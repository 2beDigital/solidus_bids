module Spree
	module Admin
		class BidsController < ResourceController
			before_action :load_data, only: [:index, :by_products, :by_user]
			after_action :update_bids, only: [:update]
			def by_products
				@collection = @collection.order(amount: :desc).group_by(&:product_id)
			end
			def by_user
				@collection = @collection.group_by(&:user_id)
			end
			def bids_accepted
				@collection = Spree::Bid.where(accepted: true)
			end

			private
			def load_data
				@collection = Spree::Bid.where(store_id: current_store.id, active: true, accepted: false)
			end
			def update_bids
				@object.change_state_active
			end
		end
	end
end