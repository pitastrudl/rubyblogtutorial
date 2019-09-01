Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  root 'welcome#index'


resources :articles do #only articles can browse trough comments
  resources :comments
end

end
