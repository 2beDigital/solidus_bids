Deface::Override.new(virtual_path: 'spree/users/show',
					name: 'add_bids_to_users_accounts',
					insert_after: "[data-hook='account_my_orders']",
					partial: 'spree/users/bids_lists')
