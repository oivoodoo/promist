class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :title
      t.text :content
      t.string :item_type
      t.integer :category_id
      t.integer :position, :default => 0
      t.integer :main_item_id

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
