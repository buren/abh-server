Rails.application.routes.draw do
  # Polls
  get '/poll', to: 'polls#poll'
  get '/result', to: 'polls#result'

  # Clear data
  get '/clear', to: 'home#clear'

  root 'home#index'
end
