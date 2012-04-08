class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :size
      t.integer :width
      t.integer :height
      t.string :content_type
      t.string :filename
      t.string :thumbnail
      t.integer :db_file_id
      t.integer :parent_id
      t.integer :item_id

      t.timestamps
    end

    create_table :db_files, :force => false do |t|
      t.binary :data
    end
  end

  def self.down
    drop_table :photos
    drop_table :db_files
  end
end

