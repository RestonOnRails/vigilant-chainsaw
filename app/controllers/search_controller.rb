class SearchController < ApplicationController
  def index
    Boot.search_by_color params[:q]
  end
end
