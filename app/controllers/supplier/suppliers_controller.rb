class Supplier::SuppliersController < ApplicationController
  before_action :set_supplier_supplier, only: [:show, :edit, :update, :destroy]

  # GET /supplier/suppliers
  # GET /supplier/suppliers.json
  def index
    @supplier_suppliers = Supplier::Supplier.all
  end

  # GET /supplier/suppliers/1
  # GET /supplier/suppliers/1.json
  def show
  end

  # GET /supplier/suppliers/new
  def new
    @supplier_supplier = Supplier::Supplier.new
  end

  # GET /supplier/suppliers/1/edit
  def edit
  end

  # POST /supplier/suppliers
  # POST /supplier/suppliers.json
  def create
    @supplier_supplier = Supplier::Supplier.new(supplier_supplier_params)

    respond_to do |format|
      if @supplier_supplier.save
        format.html { redirect_to @supplier_supplier, notice: 'Supplier was successfully created.' }
        format.json { render :show, status: :created, location: @supplier_supplier }
      else
        format.html { render :new }
        format.json { render json: @supplier_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplier/suppliers/1
  # PATCH/PUT /supplier/suppliers/1.json
  def update
    respond_to do |format|
      if @supplier_supplier.update(supplier_supplier_params)
        format.html { redirect_to @supplier_supplier, notice: 'Supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplier_supplier }
      else
        format.html { render :edit }
        format.json { render json: @supplier_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier/suppliers/1
  # DELETE /supplier/suppliers/1.json
  def destroy
    @supplier_supplier.destroy
    respond_to do |format|
      format.html { redirect_to supplier_suppliers_url, notice: 'Supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier_supplier
      @supplier_supplier = Supplier::Supplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_supplier_params
      params.require(:supplier_supplier).permit(:Bussines_name, :Contact, :Phone, :Mail, :User_id, :Device_id, :Contract_type_id, :Location_id)
    end
end
