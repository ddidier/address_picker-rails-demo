class PondsController < ApplicationController

  # GET /ponds
  # GET /ponds.json
  def index
    @ponds = Pond.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ponds }
    end
  end

  # GET /ponds/1
  # GET /ponds/1.json
  def show
    @pond = Pond.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pond }
    end
  end

  # GET /ponds/new
  # GET /ponds/new.json
  def new
    @pond = Pond.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pond }
    end
  end

  # GET /ponds/1/edit
  def edit
    @pond = Pond.find(params[:id])
  end

  # POST /ponds
  # POST /ponds.json
  def create
    @pond = Pond.new(params[:pond])

    respond_to do |format|
      if @pond.save
        format.html { redirect_to @pond, notice: 'Pond was successfully created.' }
        format.json { render json: @pond, status: :created, location: @pond }
      else
        format.html { render action: "new" }
        format.json { render json: @pond.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ponds/1
  # PUT /ponds/1.json
  def update
    @pond = Pond.find(params[:id])

    respond_to do |format|
      if @pond.update_attributes(params[:pond])
        format.html { redirect_to @pond, notice: 'Pond was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pond.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ponds/1
  # DELETE /ponds/1.json
  def destroy
    @pond = Pond.find(params[:id])
    @pond.destroy

    respond_to do |format|
      format.html { redirect_to ponds_url }
      format.json { head :no_content }
    end
  end

end
