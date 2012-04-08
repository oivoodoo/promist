module ApplicationHelper
  def fu_main_image_tag(photo, options = {})
    options[:action] = "get_main_photo" if options[:action].nil?

    fu_image_tag(photo, options)
  end

  def fu_photo_tag(photo, options = {})
    options[:action] = "get_photo" if options[:action].nil?

    fu_image_tag(photo, options)
  end

  def google_analytics(code)
     %(
         <script type='text/javascript'>
           var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
           document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
           try {
           var pageTracker = _gat._getTracker("#{code}");
           pageTracker._trackPageview();
           } catch(err){}
         </script>
       )
   end

protected  
  def fu_image_tag(photo, options = {})
    if not photo.nil? and not photo.id.blank?
      "<img src='#{url_for :controller => :image, :action => options[:action], :id => photo.id, :type => options[:type]}' alt='#{options[:alt]}'/>"
    end
  end

  def fu_main_url(photo, options = {})
    options[:action] = "get_main_photo" if options[:action].nil?

    fu_image_url(photo, options)
  end

  def fu_photo_url(photo, options = {})
    options[:action] = "get_photo" if options[:action].nil?

    fu_image_url(photo, options)
  end

  def fu_image_url(photo, options = {})
    if not photo.nil? and not photo.id.blank?
      url_for :controller => :image, :action => options[:action], :id => photo.id, :type => options[:type]
    end
  end

  def fu_image_tag(photo, options = {})
    if not photo.nil? and not photo.id.blank?
      "<img src='#{url_for :controller => :image, :action => options[:action], :id => photo.id, :type => options[:type]}' alt='#{options[:alt]}'/>"
    end
  end
end
