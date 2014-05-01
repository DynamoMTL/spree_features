class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :spree_features do |t|
      t.string :name
      t.integer :position
      t.string :link
      t.string :headline1
      t.string :headline2
      t.boolean :active

      t.timestamps
    end
  end
end
