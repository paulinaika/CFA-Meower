Rails.application.routes.draw do
  resources :meows do
    member do
    get 'toggle_follow', to: 'meows#toggle_follow'
    get 'toggle_like', to: 'meows#toggle_like'
    end
  end

  devise_for :users
  root 'pages#homepage'

      get 'toggle_follow', to: 'meows#toggle_follow'
      get 'toggle_like', to: 'meows#toggle_like'
  # get 'pages/feed'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
