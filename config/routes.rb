Rails.application.routes.draw do
	root to: 'flights#index'
	get '/flights', to: 'flihgts#index'
end
