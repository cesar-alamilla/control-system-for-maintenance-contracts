class Catalog::DevicesController < ApplicationController
  before_action :set_catalog_device, only: [:show, :edit, :update, :destroy]

  # GET /catalog/devices
  # GET /catalog/devices.json
  def index
    @catalog_devices = Catalog::Device.all
  end

  # GET /catalog/devices/1
  # GET /catalog/devices/1.json
  def show
  end

  # GET /catalog/devices/new
  def new
    @catalog_device = Catalog::Device.new
  end

  # GET /catalog/devices/1/edit
  def edit
  end

  # POST /catalog/devices
  # POST /catalog/devices.json
  def create
    @catalog_device = Catalog::Device.new(catalog_device_params)

    respond_to do |format|
      if @catalog_device.save
        format.html { redirect_to @catalog_device, notice: 'Device was successfully created.' }
        format.json { render :show, status: :created, location: @catalog_device }
      else
        format.html { render :new }
        format.json { render json: @catalog_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalog/devices/1
  # PATCH/PUT /catalog/devices/1.json
  def update
    respond_to do |format|
      if @catalog_device.update(catalog_device_params)
        format.html { redirect_to @catalog_device, notice: 'Device was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalog_device }
      else
        format.html { render :edit }
        format.json { render json: @catalog_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalog/devices/1
  # DELETE /catalog/devices/1.json
  def destroy
    @catalog_device.destroy
    respond_to do |format|
      format.html { redirect_to catalog_devices_url, notice: 'Device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalog_device
      @catalog_device = Catalog::Device.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalog_device_params
      params.require(:catalog_device).permit(:Name, :Stock_number, :Location, :Provider_who_maintains, :User_id, :Supplier_id, :Location_id)
    end
end
