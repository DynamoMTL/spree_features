class AddSubtitle < ActiveRecord::Migration
  def change
    add_column :spree_features, :subtitle, :text
  end
end
