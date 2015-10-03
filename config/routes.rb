Rails.application.routes.draw do
  mount Rich::Engine => '/rich', :as => 'rich'
  root 'posts#index'

  mount RailsAdmin::Engine, at: '/admin'

  resources :posts, only: [:show]
end
