class AddAttachmentImageToFeatureImages < ActiveRecord::Migration
  def self.up
    change_table :spree_feature_images do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :spree_feature_images, :image
  end
end
