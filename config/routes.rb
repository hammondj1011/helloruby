Rails.application.routes.draw do
  resources :people
  resources :recipe1s
  get 'say/hello'
  get 'say/goodbye'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #I am another comment
  root 'application#goodbye'
end
