class AddMainPageTypeToLibraryArticles < ActiveRecord::Migration
  def self.up
    add_column :library_articles, :is_checked, :boolean
  end

  def self.down
    remove_column :library_articles, :is_checked
  end
end
