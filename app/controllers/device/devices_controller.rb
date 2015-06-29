class Device::DevicesController < ApplicationController
  before_action :set_device_device, only: [:show, :edit, :update, :destroy]

  # GET /device/devices
  # GET /device/devices.json
  def index
    @device_devices = Device::Device.all
  end

  # GET /device/devices/1
  # GET /device/devices/1.json
  def show
  end

  # GET /device/devices/new
  def new
    @device_device = Device::Device.new
  end

  # GET /device/devices/1/edit
  def edit
  end

  # POST /device/devices
  # POST /device/devices.json
  def create
    @device_device = Device::Device.new(device_device_params)

    respond_to do |format|
      if @device_device.save
        format.html { redirect_to @device_device, notice: 'Device was successfully created.' }
        format.json { render :show, status: :created, location: @device_device }
      else
        format.html { render :new }
        format.json { render json: @device_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device/devices/1
  # PATCH/PUT /device/devices/1.json
  def update
    respond_to do |format|
      if @device_device.update(device_device_params)
        format.html { redirect_to @device_device, notice: 'Device was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_device }
      else
        format.html { render :edit }
        format.json { render json: @device_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device/devices/1
  # DELETE /device/devices/1.json
  def destroy
    @device_device.destroy
    respond_to do |format|
      format.html { redirect_to device_devices_url, notice: 'Device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_device
      @device_device = Device::Device.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_device_params
      params.require(:device_device).permit(:Name, :Stock_number, :Location, :Provider_who_maintains, :User_id, :Supplier_id, :Contract_type_id, :Location_id)
    end
end
