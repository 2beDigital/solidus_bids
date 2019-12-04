Deface::Override.new(virtual_path: "spree/products/show",
                     name: "bid_form_in_product",
                     insert_bottom: 'div[data-hook="product_right_part"]',
                     partial: "spree/products/products_bids_form",
                     disabled: false)