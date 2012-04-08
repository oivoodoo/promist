require 'application_constants'

class MainItemsController < AdminController
  include ApplicationConstants
  
  def index
    advertisements = MainItem.find(:first, :conditions => ['main_item_type = ?', 'advertisement'], 
      :select => "id")
    sellers = MainItem.find(:first, :conditions => ['main_item_type = ?', 'seller'], 
      :select => "id")
    @items = []
    [advertisements, sellers].each do |collection|
      collection.items.each {|item| @items << item}
    end
  end
  
  def new
    @item = MainItem.find(:first, :conditions => ['main_item_type = ?', params[:type]], :select => "id")
    categories = CategoryCollection.get_by_type(params[:type]).categories
    @items = []
    categories.each do |collection|
      collection.items.each {|item| @items << item}
    end
  end
  
  def create
    item = Item.find(params[:item][:id])
    main_item = MainItem.find(:first, :conditions => ['main_item_type = ?', params[:type]], 
      :select => "id")
    main_item.items << item
    main_item.save(false)
    
    redirect_to :action => :index
  end

  def destroy
    @item = Item.find(params[:id])
    items = @item.main_item.items
    items.delete @item
    
    respond_to do |format|
      format.html { redirect_to :action => :index }
      format.xml  { head :ok }
    end
  end
end

