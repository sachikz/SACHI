Rails.application.routes.draw do
  root 'static_pages#home'
  get  'about',           to: 'static_pages#about'
  get  'contents',        to: 'static_pages#contents'
  get  'contact',         to: 'contact#index'
  post 'contact/confirm', to: 'contact#confirm'
  post 'contact/thanks',  to: 'contact#thanks'
  resources :favorites do
    resources :comments
  end
end
