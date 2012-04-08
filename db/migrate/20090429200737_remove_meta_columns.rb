class RemoveMetaColumns < ActiveRecord::Migration
  def self.up
    remove_column :pages, :keywords
    remove_column :items, :keywords
    remove_column :library_articles, :keywords
    remove_column :categories, :keywords
  end

  def self.down
  end
end
