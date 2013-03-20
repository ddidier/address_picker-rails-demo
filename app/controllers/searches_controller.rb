class SearchesController < ApplicationController

  # GET /searches/new
  # GET /searches/new.json
  def new
    @pond = Pond.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pond }
    end
  end

end
