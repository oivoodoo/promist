require 'application_constants'

class LibraryArticlesController < AdminController
  include ApplicationConstants
  uses_tiny_mce(:options => AppConfig.default_mce_options, :only => [:new, :edit])

  def index
    @categories = LibraryCategory.all
  end

  def show
    @library_article = LibraryArticle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @library_article }
    end
  end

  def new
    @library_article = LibraryArticle.new
    @categories = LibraryCategory.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @library_article }
    end
  end

  def edit
    @library_article = LibraryArticle.find(params[:id])
    @categories = LibraryCategory.all
  end

  def create
    @library_article = LibraryArticle.new(params[:library_article])
    @category = LibraryCategory.find(params[:library_article][:library_category_id])
    if @category.articles.size > 0
      @library_article.position = @category.articles[0].position + 1
    end
    @category.articles << @library_article

    respond_to do |format|
      if @library_article.save
        flash[:notice] = 'Страница успешно была добавлена.'
        format.html { redirect_to(@library_article) }
        format.xml  { render :xml => @library_article, :status => :created, :location => @library_article }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @library_article.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @library_article = LibraryArticle.find(params[:id])
    
    respond_to do |format|
      if @library_article.update_attributes(params[:library_article])
        flash[:notice] = 'Страница успешно была обновлена.'
        format.html { redirect_to(@library_article) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @library_article.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @library_article = LibraryArticle.find(params[:id])
    @library_article.destroy
    
    respond_to do |format|
      format.html { redirect_to(library_articles_url) }
      format.xml  { head :ok }
    end
  end
  
  def up_item
    new_position(-1)

    respond_to do |wants|
      wants.html {
        render :partial => "library_articles/templates/short_library.html.erb", :collection => @article.category.articles
      }
    end
  end

  def down_item
    new_position(1)

    respond_to do |wants|
      wants.html {
        render :partial => "library_articles/templates/short_library.html.erb", :collection => @article.category.articles
      }
    end
  end

protected 
  def new_position(to)
    @article = LibraryArticle.find(params[:id], :select => "id, library_type, position, title, library_category_id")
    logger.error("ARTICLE " + @article.position.to_s + @article.id.to_s)
    articles = @article.category.articles
    logger.error("ARTICLES " + articles.size.to_s)
    @article.position = ensure_position(update_position(@article, to), articles.size)
    logger.error("NEW POSITION " + @article.position.to_s)
    @article.save(false)
    
    to_update = LibraryArticle.find(:first, 
      :select => "id, position, title", 
      :conditions => ['id != ? and position = ?', @article.id, @article.position])
    unless to_update.nil?
      logger.error("TO UPDATE " + to_update.position.to_s + "ID " + to_update.id.to_s)
      to_update.position = ensure_position(update_position(to_update, -to), articles.size)
      logger.error("TO UPDATE NEW POSITION " + to_update.position.to_s + "ID " + to_update.id.to_s)
      to_update.save(false)
    end
  end

  def update_position(item, to)
    item.position = item.position + to
    item.position
  end

  def ensure_position(position, size)
    if position > size
      position = 0
    elsif position < 0
      position = size - 1
    end
    position
  end
end
