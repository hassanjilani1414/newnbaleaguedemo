Rails.application.routes.draw do
  resources :users, only:[:index,:create]
  resources :sessions, only: [:create]
  root "users#index"
  get "players"=>"players#index"
  get "players/new"=> "players#new"
  post "players"=> "players#create"
  get "players/:id" => "players#show", as: "player"
  get "players/:id/edit" => "players#edit",as: "player_edit"
  patch "players/:id" => "players#update"
  delete "players/:id" => "players#delete"
  get "log_out" =>"sessions#destroy"
end
