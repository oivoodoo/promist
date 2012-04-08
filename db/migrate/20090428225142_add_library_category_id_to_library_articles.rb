class AddLibraryCategoryIdToLibraryArticles < ActiveRecord::Migration
  def self.up
    add_column :library_articles, :library_category_id, :integer
  end

  def self.down
    remove_column :library_articles, :library_category_id, :integer
  end
end
