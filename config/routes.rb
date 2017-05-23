Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'brands#index', as: 'brands_home'

  get 'displays_home' => 'displays#index', as: 'displays_home'
  get 'cpus_home' => 'cpus#index', as: 'cpus_home'
  get 'gpus_home' => 'gpus#index', as: 'gpus_home'
  get 'disks_home' => 'disks#index', as: 'disks_home'
  get 'keyboards_home' => 'keyboards#index', as: 'keyboards_home'
  get 'osystems_home' => 'osystems#index', as: 'osystems_home'
  get 'stores_home' => 'stores#index', as: 'stores_home'

  resources :notebooks, :brands, :displays, :cpus, :gpus, :disks, :keyboards, :osystems, :stores
end
