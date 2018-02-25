class HatcheriesController < ApplicationController
  before_action :set_hatchery, only: [:show, :edit, :update, :destroy]

  # GET /hatcheries
  # GET /hatcheries.json
  def index
    @hatcheries = Hatchery.all
  end

  # GET /hatcheries/1
  # GET /hatcheries/1.json
  def show
  end

  # GET /hatcheries/new
  def new
    @hatchery = Hatchery.new
  end

  # GET /hatcheries/1/edit
  def edit
  end

  # POST /hatcheries
  # POST /hatcheries.json
  def create
    @hatchery = Hatchery.new(hatchery_params)

    respond_to do |format|
      if @hatchery.save
        format.html { redirect_to @hatchery, notice: 'Hatchery was successfully created.' }
        format.json { render :show, status: :created, location: @hatchery }
      else
        format.html { render :new }
        format.json { render json: @hatchery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hatcheries/1
  # PATCH/PUT /hatcheries/1.json
  def update
    respond_to do |format|
      if @hatchery.update(hatchery_params)
        format.html { redirect_to @hatchery, notice: 'Hatchery was successfully updated.' }
        format.json { render :show, status: :ok, location: @hatchery }
      else
        format.html { render :edit }
        format.json { render json: @hatchery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hatcheries/1
  # DELETE /hatcheries/1.json
  def destroy
    @hatchery.destroy
    respond_to do |format|
      format.html { redirect_to hatcheries_url, notice: 'Hatchery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hatchery
      @hatchery = Hatchery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hatchery_params
      params.require(:hatchery).permit(:name)
    end
end
