class Catalog::SuppliersController < ApplicationController
  before_action :set_catalog_supplier, only: [:show, :edit, :update, :destroy]

  # GET /catalog/suppliers
  # GET /catalog/suppliers.json
  def index
    @catalog_suppliers = Catalog::Supplier.all
  end

  # GET /catalog/suppliers/1
  # GET /catalog/suppliers/1.json
  def show
  end

  # GET /catalog/suppliers/new
  def new
    @catalog_supplier = Catalog::Supplier.new
  end

  # GET /catalog/suppliers/1/edit
  def edit
  end

  # POST /catalog/suppliers
  # POST /catalog/suppliers.json
  def create
    @catalog_supplier = Catalog::Supplier.new(catalog_supplier_params)

    respond_to do |format|
      if @catalog_supplier.save
        format.html { redirect_to @catalog_supplier, notice: 'Supplier was successfully created.' }
        format.json { render :show, status: :created, location: @catalog_supplier }
      else
        format.html { render :new }
        format.json { render json: @catalog_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalog/suppliers/1
  # PATCH/PUT /catalog/suppliers/1.json
  def update
    respond_to do |format|
      if @catalog_supplier.update(catalog_supplier_params)
        format.html { redirect_to @catalog_supplier, notice: 'Supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalog_supplier }
      else
        format.html { render :edit }
        format.json { render json: @catalog_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalog/suppliers/1
  # DELETE /catalog/suppliers/1.json
  def destroy
    @catalog_supplier.destroy
    respond_to do |format|
      format.html { redirect_to catalog_suppliers_url, notice: 'Supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalog_supplier
      @catalog_supplier = Catalog::Supplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalog_supplier_params
      params.require(:catalog_supplier).permit(:Bussines_name, :Contact, :Phone, :Mail, :Contract_type_id)
    end
end
