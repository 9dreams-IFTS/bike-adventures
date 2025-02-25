Rails.application.routes.draw do
  resources :articolis
  root 'home#index'

  get 'home', to: 'home#index'
  get 'click/:pagina', to: 'home#click', as: 'click'
  get 'gallery', to: 'home#gallery'
  get 'project', to: 'home#project'
  get 'chisiamo', to: 'home#chisiamo'
  get 'percorsi', to: 'home#percorsi', as: 'percorsi'
  get 'prodotti', to: 'home#prodotti', as: 'prodotti'

  # Like path
  get 'home/like/:pagina', to: 'home#click', as: 'like_click'
end
