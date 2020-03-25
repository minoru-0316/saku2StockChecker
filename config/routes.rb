Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tops#index'    

  get 'answers/index'
  get 'answers/new'
  
  resources :stockplains
  resources :prefs
  resources :genders
  resources :jobs
  resources :ages
  
  resources :answers

  resources :tops

  resources :forstocks
  
end
