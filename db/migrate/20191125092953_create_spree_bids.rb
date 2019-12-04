class CreateSpreeBids < ActiveRecord::Migration[5.0]
  def change
    create_table :spree_bids do |t|
    	t.decimal :amount, precision: 8, scale: 2, null: false
    	t.boolean :accepted, default: false
    	t.boolean :active, default: true
    	t.references :store
    	t.references :product
    	t.references :user
    end
  end
end