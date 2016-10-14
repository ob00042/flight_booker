Rails.application.routes.draw do

	resources :bookings, only: [:new, :create]
	root to: 'flights#index'
	get '/flights', to: 'flihgts#index'
	post '/bookings/new', to: 'bookings#create'
end
