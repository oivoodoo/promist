class AddMainImageIdToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :main_image_id, :integer
  end

  def self.down
    remove_column :items, :main_image_id
  end
end
