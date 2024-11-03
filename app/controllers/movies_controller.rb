class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/list"})
  end


  def show
    the_id = params.fetch("the_id")
    matching_records = Movie.where(id: the_id)
    @the_movie = matching_records.first  # Simplified to use `.first` instead of `.at(0)`
  
    if @the_movie.nil?
      flash[:alert] = "Movie not found."
      redirect_to movies_path  # Redirect to a suitable path, such as the movies index
    else
      render template: "movie_templates/details"
    end
  end

  #def show
    #the_id = params.fetch("the_id")
    #matching_records = Movie.where({ :id => the_id })
    #@the_movie = matching_records.at(0)
    #render({ :template => "movie_templates/details" })
  #end
end
