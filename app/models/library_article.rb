require 'application_constants'

class LibraryArticle < ActiveRecord::Base
  include ApplicationConstants

  default_scope :order => "position"
  
  belongs_to :item
  belongs_to :category, :class_name => "LibraryCategory"
  
  validates_presence_of :title
  validates_presence_of :content
  validates_length_of :title,
                      :within => 4..128

  attr_accessor :should_destroy

  def should_destroy?
    should_destroy.to_i == 1
  end

  def category
    @category ||= LibraryCategory.find(:first, :conditions => ['id = ?', attributes["library_category_id"]])
    @category
  end
end
