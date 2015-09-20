Rails.application.routes.draw do
  # Weight/height
  get '/weight_height', to: 'main#weight_height'
  get '/weight_height_chart', to: 'main#weight_height_chart'
  # Polls
  get '/polls', to: 'main#polls'
  get '/polls_chart', to: 'main#polls_chart'
  # Clear data
  get '/clear', to: 'main#clear'
end
