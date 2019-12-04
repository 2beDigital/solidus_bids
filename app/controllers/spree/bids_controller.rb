module Spree
	class BidsController < Spree::StoreController
		before_action :load_product, only: [:create_or_update]

		def create_or_update
	    @bid = Spree::Bid.find_by(product_id: params[:bid][:product_id], user_id: params[:bid][:user_id]) || Spree::Bid.new(permitted_resource_params) 
	    if @bid.id.blank? && @bid.save
	      redirect_to(@product, notice: Spree.t(:successfully_created, resource: Spree.t(:bid)))
	    elsif @bid.id.present? && @bid.update_attributes(permitted_resource_params)
	    	redirect_to(@product, notice: Spree.t(:successfully_updated, resource: Spree.t(:bid)))
	    else
	    	flash[:error] = @bid.errors.full_messages.join(", ")
	      redirect_to @product
	    end
	  end

	  private

	  def load_product
	  	@product = Spree::Product.find_by(id: params[:bid][:product_id])
	  end

	  def permitted_resource_params
			@permitted_resource_params ||= params.require('bid').permit(:store_id,:product_id, :user_id, :amount)
		end
	end
end