class PageService < ActiveRecord::Base
  def initialize(page, main_photo, photos = [])
    @page, @main_photo, @photos = page, main_photo, photos
  end

  def save
    return false unless valid?
    begin
      Page.transaction do
        if @main_photo.new_record?
          @page.main_photo.destroy if @page.main_photo
          @page.main_photo = @main_photo
          @main_photo.save!
        end
        @photos.each do |photo|
          # if you found old photos we have to miss others
          if not photo.new_record?
            if photo.should_destroy?
              photo.destroy
              next
            else
              p = @page.photos.detect { |p| p.id == photo.id }
            end
          end
          @page.photos.push photo if p.nil?
          photo.save! if p.nil?
        end
        @page.save!
      end
      true
    rescue
      false
    end
  end

  def update_attributes(page_attributes, main_photo_attributes, photos_attributes, editable_photos = nil)
    @page.attributes = page_attributes
    @main_photo = MainPhoto.new(:uploaded_data => main_photo_attributes)
    @photos = PhotoService.new(@page, photos_attributes, editable_photos).photos
    save
  end

  def valid?
    result = false
    @photos.each do |p|
       result = p.valid?
       if not result
         break
       end
    end
    @page.valid? and @main_photo.valid? and result
  end
end
