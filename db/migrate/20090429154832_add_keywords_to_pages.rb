class AddKeywordsToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :keywords, :string
    add_column :items, :keywords, :string
    add_column :library_articles, :keywords, :string
    add_column :categories, :keywords, :string
  end

  def self.down
    remove_column :pages, :keywords
    remove_column :items, :keywords
    remove_column :library_articles, :keywords
    remove_column :categories, :keywords
  end
end

