module ApplicationConstants
  LIBRARY_TYPES = {:materials => 'Материалы и термины', 
                   :productions => 'Производство рекламных сувениров', 
                   :marketing => 'Маркетинг и рекламные технологии'}

  ITEM_TYPES = {:advertisement => 'для рекламы', 
                :seller => 'для торговли'}

  PAGE_TYPES = {:main_page => 'главная страница', 
                :about => 'о компании', 
                :clients => 'клиенты', 
                :library => 'библиотека', 
                :contacts => 'контакты'}
end

=begin
It's model ITEM_TYPES statement.

+TopCategory1
  +Category1 (title) = CategoryCollection
    +collection1 (title) = Category
      +photo1 (title, descrption, image) = Item
      +photo2 
      +photo3
    +collection2
    +collection3
  +Category2
    +collection1
    +collection2
    +collection3
+TopCategory2
  +Category1...
=end
