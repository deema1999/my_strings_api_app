Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/reverse', to: 'string#reverse', defaults: {format: :json}
  post '/add', to: 'string#add', defaults: {format: :json}
  get '/get/:my_string_id', to: 'string#show', defaults: {format: :json}

end
