class SprovidersController < ApplicationController
  before_action :set_sprovider, only: [:show, :edit, :update, :destroy]

  # GET /sproviders
  # GET /sproviders.json
  def index
    @sproviders = Sprovider.all
  end

  # GET /sproviders/1
  # GET /sproviders/1.json
  def show
  end

  # GET /sproviders/new
  def new
    @sprovider = Sprovider.new
  end

  # GET /sproviders/1/edit
  def edit
  end

  # POST /sproviders
  # POST /sproviders.json
  def create
    @sprovider = Sprovider.new(sprovider_params)

    respond_to do |format|
      if @sprovider.save
        format.html { redirect_to @sprovider, notice: 'Sprovider was successfully created.' }
        format.json { render :show, status: :created, location: @sprovider }
      else
        format.html { render :new }
        format.json { render json: @sprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sproviders/1
  # PATCH/PUT /sproviders/1.json
  def update
    respond_to do |format|
      if @sprovider.update(sprovider_params)
        format.html { redirect_to @sprovider, notice: 'Sprovider was successfully updated.' }
        format.json { render :show, status: :ok, location: @sprovider }
      else
        format.html { render :edit }
        format.json { render json: @sprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sproviders/1
  # DELETE /sproviders/1.json
  def destroy
    @sprovider.destroy
    respond_to do |format|
      format.html { redirect_to sproviders_url, notice: 'Sprovider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprovider
      @sprovider = Sprovider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprovider_params
      params.require(:sprovider).permit(:uname, :doj, :contact_no, :status, :payment, :credit, :date)
    end
end
