class AddItemIdToLibraryArticles < ActiveRecord::Migration
  def self.up
    add_column :library_articles, :item_id, :integer
  end

  def self.down
    remove_column :library_articles, :item_id, :integer
  end
end
