class BasePageController < AdminController
  uses_tiny_mce(:options => AppConfig.default_mce_options, :only => [:edit_page])

  def index
    @pages = Page.all
  end

  def edit_page
    @page = Page.find_by_page_type(params[:type])
    @pages = Page.all
  end

  def do_edit_page
    @page = Page.find(params[:id])
    respond_to do |format|
      if @page.update_attributes(params[:page])
        flash[:notice] = 'Страница успешно была обновлена.'
        format.html { redirect_to :action => :index }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit_page" }
        format.xml  { render :xml => @pages.errors, :status => :unprocessable_entity }
      end
    end
  end
end
