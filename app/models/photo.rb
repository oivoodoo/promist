class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => {:medium => "150x150>", :thumb => "64x64>"},
    :path => ":rails_root/public/system/photos/:id/:style/:basename.:extension",
    :url => "/system/photos/:id/:style/:basename.:extension"

  belongs_to :page
  belongs_to :item

  attr_accessor :should_destroy

  def should_destroy?
    should_destroy.to_i == 1
  end
end

