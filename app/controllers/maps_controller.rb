class MapsController < ApplicationController
  def index
      response = HTTParty.get 'https://api.chucknorris.io/jokes/random'
      render json: JSON.parse(response.body)
  end
end
