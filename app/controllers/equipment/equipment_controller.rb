class Equipment::EquipmentController < ApplicationController
  before_action :set_equipment_equipment, only: [:show, :edit, :update, :destroy]

  # GET /equipment/equipment
  # GET /equipment/equipment.json
  def index
    @equipment_equipment = Equipment::Equipment.all
  end

  # GET /equipment/equipment/1
  # GET /equipment/equipment/1.json
  def show
  end

  # GET /equipment/equipment/new
  def new
    @equipment_equipment = Equipment::Equipment.new
  end

  # GET /equipment/equipment/1/edit
  def edit
  end

  # POST /equipment/equipment
  # POST /equipment/equipment.json
  def create
    @equipment_equipment = Equipment::Equipment.new(equipment_equipment_params)

    respond_to do |format|
      if @equipment_equipment.save
        format.html { redirect_to @equipment_equipment, notice: 'Equipment was successfully created.' }
        format.json { render :show, status: :created, location: @equipment_equipment }
      else
        format.html { render :new }
        format.json { render json: @equipment_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment/equipment/1
  # PATCH/PUT /equipment/equipment/1.json
  def update
    respond_to do |format|
      if @equipment_equipment.update(equipment_equipment_params)
        format.html { redirect_to @equipment_equipment, notice: 'Equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipment_equipment }
      else
        format.html { render :edit }
        format.json { render json: @equipment_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/equipment/1
  # DELETE /equipment/equipment/1.json
  def destroy
    @equipment_equipment.destroy
    respond_to do |format|
      format.html { redirect_to equipment_equipment_index_url, notice: 'Equipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_equipment
      @equipment_equipment = Equipment::Equipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_equipment_params
      params.require(:equipment_equipment).permit(:Name, :Stock_number, :Location, :Provider_who_maintains, :id_user, :id_Supplier_integer, :id_Contract_type, :id_location)
    end
end
