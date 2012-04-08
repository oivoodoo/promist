class ArticlesController < AdminController
  def add_to_main_page
    @categories = LibraryCategory.all
  end
  
  def do_add_to_main_page
    category = LibraryCategory.find(params[:library_category][:id].to_i)
    category.update_attributes(params[:library_category])
    redirect_to :controller => :library_articles, :action => :index
  end
end
