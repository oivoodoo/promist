class LibraryCategory < ActiveRecord::Base
  has_many :articles, :class_name => "LibraryArticle", :foreign_key => :library_category_id
  
  validates_length_of :title,
                      :within => 4..128
  validates_presence_of :title
  validates_associated :articles
  
  after_update :save_articles
    
  def items_order_position
    LibraryArticle.find(:all, :order => "position", :conditions => ["library_category_id = ?", id])
  end
  
  def articles_attributes=(articles_attributes)
    articles_attributes.each do |attributes|
      unless attributes[:id].nil?
        article = articles.detect{|a| a.id == attributes[:id].to_i}
        article.is_checked = attributes[:is_checked] unless article.nil?
      end
    end
  end
  
protected 
  def save_articles
    articles.each do |article|
      article.save(false)
    end
  end
end
