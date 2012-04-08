require 'application_constants'

class Page < ActiveRecord::Base
  include ApplicationConstants

  validates_presence_of :title
  validates_length_of :title,
                      :within => 4..128
  validates_presence_of :page_type
  validates_length_of :page_type,
                      :within => 1..128

  def self.find_main_page
    find_by_page_type(PAGE_TYPES[:main_page])
  end
  
  def self.find_contacts_page
    find_by_page_type(PAGE_TYPES[:contacts])
  end
  
  def self.find_about_page
    find_by_page_type(PAGE_TYPES[:about])
  end

  def self.find_clients_page
    find_by_page_type(PAGE_TYPES[:clients])
  end
  
  def self.find_library_page
    find_by_page_type(PAGE_TYPES[:library])
  end
  
  def self.get_name(page_type)
    return CUSTOM_PAGE_TYPES[page_type.to_sym]
  end
end
