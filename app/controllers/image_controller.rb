class ImageController < ApplicationController
  def get_banner
    @image = Banner.find(params[:id])
    @add_param = "banner"
    provide_image
  end

  def get_image
    @image = Image.find(params[:id])
    @add_param = "image"
    provide_image
  end

  def get_photo
    @image = Photo.find(params[:id])
    @add_param = "photo"
    provide_image
  end

protected
  def provide_image
    image_data = get
    send_data(image_data, :type => "image/jpeg",
                          :filename => @id,
                          :disposition => 'inline')
  end

  def get
    @id = "image_#{params[:id]}_#{params[:type]}_#{@add_param}"
    image_data = Rails.cache.read (@id, :raw => true)
    if image_data.nil?
      type = params[:type]
      unless type.nil? or type.empty?
        thumbs = @image.thumbnails.select do |t|
          t.thumbnail == type
        end
        raise "Thumbnail not found." if thumbs.size == 0
        image_data = thumbs.first.db_file.data
      else
        image_data = @image.db_file.data
      end
      Rails.cache.write(@id, image_data)
    end
    image_data
  end
end
