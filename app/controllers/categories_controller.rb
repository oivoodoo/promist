class CategoriesController < AdminController
  uses_tiny_mce

  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @category }
    end
  end

  def new
    @category = Category.new
    @category_collections = CategoryCollection.find(:all, :select => "id, title")

    respond_to do |format|
      format.html
      format.xml  { render :xml => @category }
    end
  end

  def edit
    @category = Category.find(params[:id])
    @category_collections = CategoryCollection.find(:all, :select => "id, title")
  end

  def create
    @category = Category.new(params[:category])
    @category.position = @category.category_collection.categories.size unless @category.category_collection.categories.nil?
    @category_collections = CategoryCollection.find(:all, :select => "id, title")

    respond_to do |format|
      if @category.save
        flash[:notice] = 'Категория успешно добалена.'
        format.html { redirect_to :controller => :category_collections, :action => :index }
        format.xml  { render :xml => @category, :status => :created, :location => @category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @category = Category.find(params[:id])
    @category_collections = CategoryCollection.find(:all, :select => "id, title")

    respond_to do |format|
      if @category.update_attributes(params[:category])
        flash[:notice] = 'Категория успешно обновлена.'
        format.html { redirect_to :controller => :category_collections, :action => :index }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to :controller => :category_collections, :action => :index }
      format.xml  { head :ok }
    end
  end
end
