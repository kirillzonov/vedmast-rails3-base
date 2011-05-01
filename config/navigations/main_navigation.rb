SimpleNavigation::Configuration.run do |navigation|  
  navigation.autogenerate_item_ids = false

  navigation.items do |primary|
    primary.dom_class = 'main'
    primary.item :dashboard, 'Главная', root_path
    primary.item :informations, 'Информация', informations_path
    primary.item :articles, 'Товары', articles_path
    primary.item :questions, 'Вопросы', questions_path

  end
end
