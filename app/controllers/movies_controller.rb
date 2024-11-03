class Movies < ApplicationController
  def index
    render({ :template => "movie_template/list"})
