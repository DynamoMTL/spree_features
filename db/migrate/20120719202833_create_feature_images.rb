class CreateFeatureImages < ActiveRecord::Migration
  def change
    create_table :spree_feature_images do |t|
      t.references :feature
      t.string :content_uid
      t.integer :position

      t.timestamps
    end
    add_index :spree_feature_images, :feature_id
  end
end
