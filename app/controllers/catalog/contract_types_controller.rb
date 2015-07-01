class Catalog::ContractTypesController < ApplicationController
  before_action :set_catalog_contract_type, only: [:show, :edit, :update, :destroy]

  # GET /catalog/contract_types
  # GET /catalog/contract_types.json
  def index
    @catalog_contract_types = Catalog::ContractType.all
  end

  # GET /catalog/contract_types/1
  # GET /catalog/contract_types/1.json
  def show
  end

  # GET /catalog/contract_types/new
  def new
    @catalog_contract_type = Catalog::ContractType.new
  end

  # GET /catalog/contract_types/1/edit
  def edit
  end

  # POST /catalog/contract_types
  # POST /catalog/contract_types.json
  def create
    @catalog_contract_type = Catalog::ContractType.new(catalog_contract_type_params)

    respond_to do |format|
      if @catalog_contract_type.save
        format.html { redirect_to @catalog_contract_type, notice: 'Contract type was successfully created.' }
        format.json { render :show, status: :created, location: @catalog_contract_type }
      else
        format.html { render :new }
        format.json { render json: @catalog_contract_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalog/contract_types/1
  # PATCH/PUT /catalog/contract_types/1.json
  def update
    respond_to do |format|
      if @catalog_contract_type.update(catalog_contract_type_params)
        format.html { redirect_to @catalog_contract_type, notice: 'Contract type was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalog_contract_type }
      else
        format.html { render :edit }
        format.json { render json: @catalog_contract_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalog/contract_types/1
  # DELETE /catalog/contract_types/1.json
  def destroy
    @catalog_contract_type.destroy
    respond_to do |format|
      format.html { redirect_to catalog_contract_types_url, notice: 'Contract type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalog_contract_type
      @catalog_contract_type = Catalog::ContractType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalog_contract_type_params
      params.require(:catalog_contract_type).permit(:Type, :Supplier)
    end
end
