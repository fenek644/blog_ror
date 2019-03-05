Rails.application.routes.draw do
  get 'home/index'
  get 'home/contact'
  get 'about/show'
  get 'about' => 'about#show'

  get 'term/show'
  get 'term' => 'term#show'

  get '/' => 'home#index'
  # get 'contacts' => 'contacts#new'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
