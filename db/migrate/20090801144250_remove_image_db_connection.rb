class RemoveImageDbConnection < ActiveRecord::Migration
  def self.up
      #Item.all.each do |item|
      #  item.photos.destroy_all
      #  item.images.destroy_all
      #end

      drop_table :db_files
      drop_table :images
      drop_table :banners
      drop_table :photos

    create_table :photos do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.string :title
      t.integer :position
      t.integer :item_id

      t.timestamps
    end

    create_table :images do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.string :title
      t.integer :position
      t.integer :item_id

      t.timestamps
    end

    create_table :banners do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.integer :position
      t.string :banner_url

      t.timestamps
    end
  end

  def self.down
    drop_table :images
    drop_table :photos
    drop_table :banners
  end
end
