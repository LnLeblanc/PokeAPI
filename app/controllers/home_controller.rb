class HomeController < ApplicationController

  def index
    data = get_data_from_api("https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0")
    session[:url] = data["next"]
    session[:offset] = 20
    render json: data
  end

  def show
    id = params[:id]
    data = get_data_from_api("https://pokeapi.co/api/v2/pokemon/#{id}")
    render json: data
  end

  def update
    data = get_data_from_api(session[:url])
    session[:url] = data["next"]
    # A la fin de la liste on repart au début
    if session[:offset] >= 1098
      session[:offset] = 0
      session[:url] = "https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0"
    else
      # Sinon on ajoute 20 au offset
      session[:offset] += 20
    end
    render json: data
  end
end