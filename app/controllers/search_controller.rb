class SearchController < ApplicationController
  def show
  	search_query = params[:search][:title]
  	@results = Guitar.where("make like?", "%#{search_query}%")
  end
end
