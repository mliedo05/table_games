Rails.application.routes.draw do
  resources :table_games
  root "table_games#index"
end
