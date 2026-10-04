class PokeballsController < ApplicationController
  def create
    @pokeball = Pokeball.new(pokeball_params)
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokeball.pokemon = @pokemon

    @pokeball.save
    redirect_to trainer_path(@pokeball.trainer)
  end

  private

  def pokeball_params
    params.require(:pokeball).permit(:caught_on, :location, :trainer_id)
  end
end
