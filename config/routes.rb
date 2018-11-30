Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/about',     to: 'static_pages#about'
  get  '/contents',  to: 'static_pages#contents'
  get  '/contact',   to: 'static_pages#contact'
  resources :favorites do
    resources :comments
  end
end
