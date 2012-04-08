class CreateBanners < ActiveRecord::Migration
  def self.up
    create_table :banners do |t|
      t.integer :position, :default => 0
      t.integer :size
      t.integer :width
      t.integer :height
      t.string :content_type
      t.string :filename
      t.string :thumbnail
      t.integer :db_file_id
      t.integer :parent_id
      t.string :banner_url
      
      t.timestamps
    end
  end

  def self.down
    drop_table :banners
  end
end
