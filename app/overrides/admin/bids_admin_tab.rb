Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "bids_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:bids, label: 'Bids', icon: 'balance-scale') if can?(:admin, Spree::Store) %>",
                     :disabled => false)