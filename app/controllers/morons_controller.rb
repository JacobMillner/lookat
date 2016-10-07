class MoronsController < ApplicationController
  before_action :set_moron, only: [:show, :edit, :update, :destroy]

  # GET /morons
  # GET /morons.json
  def index
    @morons = Moron.all
  end

  # GET /morons/1
  # GET /morons/1.json
  def show
  end

  # GET /morons/new
  def new
    @moron = Moron.new
  end

  # GET /morons/1/edit
  def edit
  end

  # POST /morons
  # POST /morons.json
  def create
    @moron = Moron.new(moron_params)

    respond_to do |format|
      if @moron.save
        format.html { redirect_to @moron, notice: 'Moron was successfully created.' }
        format.json { render :show, status: :created, location: @moron }
      else
        format.html { render :new }
        format.json { render json: @moron.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /morons/1
  # PATCH/PUT /morons/1.json
  def update
    respond_to do |format|
      if @moron.update(moron_params)
        format.html { redirect_to @moron, notice: 'Moron was successfully updated.' }
        format.json { render :show, status: :ok, location: @moron }
      else
        format.html { render :edit }
        format.json { render json: @moron.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /morons/1
  # DELETE /morons/1.json
  def destroy
    @moron.destroy
    respond_to do |format|
      format.html { redirect_to morons_url, notice: 'Moron was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moron
      @moron = Moron.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moron_params
      params.require(:moron).permit(:imgur, :description)
    end
end
