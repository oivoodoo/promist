require 'application_constants'

module MainItemsHelper
  include ApplicationConstants

  def get_type_collection(collection_type)
    ITEM_TYPES[collection_type.to_sym]
  end
end
