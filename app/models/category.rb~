class Category < ActiveRecord::Base
  default_scope :order => "position"

  has_many :items
  belongs_to :category_collection

  validates_presence_of :title
  validates_associated :items
end
