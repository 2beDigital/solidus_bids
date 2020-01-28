Spree::Store.class_eval do
	has_many :bids, dependent: :destroy
end