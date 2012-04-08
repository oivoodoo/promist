class Banner < ActiveRecord::Base
  has_attached_file :image, :path => ":rails_root/public/system/banners/:id/:style/:basename.:extension",
    :url => "/system/banners/:id/:style/:basename.:extension"

  belongs_to :page

  attr_accessor :should_destroy

  def should_destroy?
    should_destroy.to_i == 1
  end
end
