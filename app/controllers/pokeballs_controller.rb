class PokeballsController < ApplicationController

  # def new
  #   @pokeball = Pokeball.new
  # end

  def create
    @pokeball = Pokeball.new(pokeball_params)
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokeball.pokemon = @pokemon
    if @pokeball.save
      redirect_to trainer_path(@pokeball.trainer)
    else
      render "pokemons/show"
    end
  end

  private

  def pokeball_params
    params.require(:pokeball).permit(:caught_on, :location, :trainer_id, :pokemon_id)
  end
end
