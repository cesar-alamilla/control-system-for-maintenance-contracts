class Location::LocationsController < ApplicationController
  before_action :set_location_location, only: [:show, :edit, :update, :destroy]

  # GET /location/locations
  # GET /location/locations.json
  def index
    @location_locations = Location::Location.all
  end

  # GET /location/locations/1
  # GET /location/locations/1.json
  def show
  end

  # GET /location/locations/new
  def new
    @location_location = Location::Location.new
  end

  # GET /location/locations/1/edit
  def edit
  end

  # POST /location/locations
  # POST /location/locations.json
  def create
    @location_location = Location::Location.new(location_location_params)

    respond_to do |format|
      if @location_location.save
        format.html { redirect_to @location_location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location_location }
      else
        format.html { render :new }
        format.json { render json: @location_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /location/locations/1
  # PATCH/PUT /location/locations/1.json
  def update
    respond_to do |format|
      if @location_location.update(location_location_params)
        format.html { redirect_to @location_location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location_location }
      else
        format.html { render :edit }
        format.json { render json: @location_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location/locations/1
  # DELETE /location/locations/1.json
  def destroy
    @location_location.destroy
    respond_to do |format|
      format.html { redirect_to location_locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_location
      @location_location = Location::Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_location_params
      params.require(:location_location).permit(:Laboratory_Department, :Manager, :Mail, :id_User, :id_Equipment, :id_Contract_type, :id_Supplier)
    end
end
