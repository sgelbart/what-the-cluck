class HatchChicksController < ApplicationController
  before_action :set_hatch_chick, only: [:show, :edit, :update, :destroy]

  # GET /hatch_chicks
  # GET /hatch_chicks.json
  def index
    @hatch_chicks = HatchChick.all
  end

  # GET /hatch_chicks/1
  # GET /hatch_chicks/1.json
  def show
  end

  # GET /hatch_chicks/new
  def new
    @hatch_chick = HatchChick.new
  end

  # GET /hatch_chicks/1/edit
  def edit
  end

  # POST /hatch_chicks
  # POST /hatch_chicks.json
  def create
    @hatch_chick = HatchChick.new(hatch_chick_params)

    respond_to do |format|
      if @hatch_chick.save
        format.html { redirect_to @hatch_chick, notice: 'Hatch chick was successfully created.' }
        format.json { render :show, status: :created, location: @hatch_chick }
      else
        format.html { render :new }
        format.json { render json: @hatch_chick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hatch_chicks/1
  # PATCH/PUT /hatch_chicks/1.json
  def update
    respond_to do |format|
      if @hatch_chick.update(hatch_chick_params)
        format.html { redirect_to @hatch_chick, notice: 'Hatch chick was successfully updated.' }
        format.json { render :show, status: :ok, location: @hatch_chick }
      else
        format.html { render :edit }
        format.json { render json: @hatch_chick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hatch_chicks/1
  # DELETE /hatch_chicks/1.json
  def destroy
    @hatch_chick.destroy
    respond_to do |format|
      format.html { redirect_to hatch_chicks_url, notice: 'Hatch chick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hatch_chick
      @hatch_chick = HatchChick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hatch_chick_params
      params.require(:hatch_chick).permit(:hatch_id, :breed_id, :sex)
    end
end
