class PhotoService
  def initialize(page, photos, editable_photos = nil)
    @page = page
    @photos = []
    [photos, editable_photos].each do |attributes|
      upload(@photos, attributes)
    end
  end

  def photos
    @photos
  end

  protected
  def upload(collection, attributes)
    unless attributes.nil?
      attributes.each do |attribute|
        if not attribute[:photo].nil?
          collection << Photo.new(:uploaded_data => attribute[:photo])
        else
          photo = @page.photos.find(attribute[:id])
          photo.attributes = attribute
          collection << photo
        end
      end
    end
  end  
end
