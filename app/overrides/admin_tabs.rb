Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "features_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:features, :icon => 'icon-tags') %>")

