class MainItem < ActiveRecord::Base
  has_many :items

  validates_associated :items
  validates_presence_of :main_item_type

  named_scope :advertisement, :conditions => {:main_item_type => 'advertisement'}
  named_scope :seller, :conditions => {:main_item_type => 'seller'}
end
