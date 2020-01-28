Spree::User.class_eval do
	has_many :bids, dependent: :destroy
end