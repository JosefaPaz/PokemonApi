class PokemonsController < ApplicationController
  # POST /pokemons
  def create
    @pokemon = Pokemon.new(pokemon_params)
    if @pokemon.save
      render json: @pokemon, status: :created
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # PATCH /pokemons/:id
  def update
    @pokemon = Pokemon.find(params[:id])
    if @pokemon.update(pokemon_params)
      render json: @pokemon
    else
      render json: @pokemon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pokemons/:id
  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    head :no_content
  end

  # GET /pokemons/filter/:pokemon_type
  def filter_by_type
    @pokemons = Pokemon.where(pokemon_type: params[:pokemon_type])
    render json: @pokemons
  end

  def pokemon_params
    params.require(:pokemon).permit(:name, :pokemon_type)
  end
end