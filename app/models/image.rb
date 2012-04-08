class Image < ActiveRecord::Base
  has_attached_file :image, :styles => { :gallery => "500x500>", :medium => "340x250>", :thumb => "64x64>" },
    :path => ":rails_root/public/system/images/:id/:style/:basename.:extension",
    :url => "/system/images/:id/:style/:basename.:extension"

  belongs_to :item

  attr_accessor :should_destroy

  def should_destroy?
    should_destroy.to_i == 1
  end
end
