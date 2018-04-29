Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'

  get 'home/new' => 'home#new'

  get 'home/create'

  get 'home/edit/:post_id' => 'home#edit'

  get 'home/destroy'

  post 'home/create' => 'home#create'

  post 'home/edit' => 'home#edit'

  get 'home/show/:post_id' => 'home#show'

  get 'home/destroy/:post_id' => 'home#destroy'

  get 'home/back' => 'home#back'

  post 'home/update/:post_id' => 'home#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
