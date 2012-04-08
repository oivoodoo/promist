class CreateLibraryCategories < ActiveRecord::Migration
  def self.up
    create_table :library_categories do |t|
      t.string :title
      t.integer :position, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :library_categories
  end
end
