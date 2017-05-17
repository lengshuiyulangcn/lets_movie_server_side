class Api::V1::MoviesController < Api::V1::ApiController

  def index
    @movies = Movie.all # modify to get recent movies
  end

  def show
    @movie = Movie.find(params.permit(:id)[:id])
  end

  private
  def movie_params
  end
end
