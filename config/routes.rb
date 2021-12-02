Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/random', to: 'questions#random'

  get '/category/all', to: 'questions#allcategories'
  get '/category/:category_id', to: 'questions#category'

  
end
