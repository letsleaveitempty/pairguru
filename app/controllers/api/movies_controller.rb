class Api::MoviesController < ApplicationController
  def movie_list
    movies = Movie.all
    respond_with_json(movies, options: { genre: params[:genre] })
  end

  def movie
    movie = Movie.find(params[:movie_id])
    respond_with_json(movie, options: { genre: params[:genre] })
  end
end
