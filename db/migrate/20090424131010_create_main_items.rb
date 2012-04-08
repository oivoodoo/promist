require "#{RAILS_ROOT}/app/models/main_item"

class CreateMainItems < ActiveRecord::Migration
  def self.up
    create_table :main_items do |t|
      t.string :main_item_type

      t.timestamps
    end

    MainItem.create :main_item_type => "advertisement"
    MainItem.create :main_item_type => "seller"
  end

  def self.down
    drop_table :main_items
  end
end
