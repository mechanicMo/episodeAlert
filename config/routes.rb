EpisodeAlert::Application.routes.draw do

root to: 'alerts#new'

resources :alerts, only: [:create]

end