class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :title
      t.integer :item_id
      t.integer :position
      t.integer :size
      t.integer :width
      t.integer :height
      t.string :content_type
      t.string :filename
      t.string :thumbnail
      t.integer :db_file_id
      t.integer :parent_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
