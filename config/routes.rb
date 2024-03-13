Rails.application.routes.draw do
  get '/pokemons/filter/:pokemon_type', to: 'pokemons#filter_by_type'
  post '/pokemons', to: 'pokemons#create'
  patch '/pokemons/:id', to: 'pokemons#update'
  delete '/pokemons/:id', to: 'pokemons#destroy'
end
