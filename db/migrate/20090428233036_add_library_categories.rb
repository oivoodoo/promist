require "#{RAILS_ROOT}/app/models/library_category"
require "#{RAILS_ROOT}/app/models/library_article"

class AddLibraryCategories < ActiveRecord::Migration
  def self.up
    LibraryCategory.create :title => "Материалы и термины"
    LibraryCategory.create :title => "Производство рекламных сувениров"
    LibraryCategory.create :title => "Маркетинг и рекламные технологии"
  end

  def self.down
  end
end
