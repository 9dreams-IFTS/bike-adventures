Rails.application.routes.draw do
  root 'home#index'

  devise_for :users


  resources :users
  resources :articolis

  get 'home',        to: 'home#index'
  get 'gallery',     to: 'home#gallery'
  get 'project',     to: 'home#project'
  get 'chisiamo',    to: 'home#chisiamo'
  get 'percorsi',    to: 'home#percorsi', as: 'percorsi'
  get 'prodotti',    to: 'home#prodotti', as: 'prodotti'


  get 'click/:pagina',      to: 'home#click', as: 'click'
  get 'home/like/:pagina',  to: 'home#click', as: 'like_click'
end
