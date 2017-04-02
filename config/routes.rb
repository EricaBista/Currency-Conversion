Rails.application.routes.draw do
	resources :publics
  root :to => 'publics#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
