class Catalog::LocationsController < ApplicationController
  before_action :set_catalog_location, only: [:show, :edit, :update, :destroy]

  # GET /catalog/locations
  # GET /catalog/locations.json
  def index
    @catalog_locations = Catalog::Location.all
  end

  # GET /catalog/locations/1
  # GET /catalog/locations/1.json
  def show
  end

  # GET /catalog/locations/new
  def new
    @catalog_location = Catalog::Location.new
  end

  # GET /catalog/locations/1/edit
  def edit
  end

  # POST /catalog/locations
  # POST /catalog/locations.json
  def create
    @catalog_location = Catalog::Location.new(catalog_location_params)

    respond_to do |format|
      if @catalog_location.save
        format.html { redirect_to @catalog_location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @catalog_location }
      else
        format.html { render :new }
        format.json { render json: @catalog_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalog/locations/1
  # PATCH/PUT /catalog/locations/1.json
  def update
    respond_to do |format|
      if @catalog_location.update(catalog_location_params)
        format.html { redirect_to @catalog_location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalog_location }
      else
        format.html { render :edit }
        format.json { render json: @catalog_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalog/locations/1
  # DELETE /catalog/locations/1.json
  def destroy
    @catalog_location.destroy
    respond_to do |format|
      format.html { redirect_to catalog_locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalog_location
      @catalog_location = Catalog::Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalog_location_params
      params.require(:catalog_location).permit(:Laboratory_department, :Manager, :Mail, :Device)
    end
end
