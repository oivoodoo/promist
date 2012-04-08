ActionController::Routing::Routes.draw do |map|
  map.resources :library_categories
  map.resources :pages
  map.resources :items
  map.resources :library_articles
  map.resources :categories
  map.resources :category_collections
  map.resources :banners

  map.connect '', :controller => 'main'
  map.root :controller => 'main'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
