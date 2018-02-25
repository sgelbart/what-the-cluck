class PredatorsController < ApplicationController
  before_action :set_predator, only: [:show, :edit, :update, :destroy]

  # GET /predators
  # GET /predators.json
  def index
    @predators = Predator.all
  end

  # GET /predators/1
  # GET /predators/1.json
  def show
  end

  # GET /predators/new
  def new
    @predator = Predator.new
  end

  # GET /predators/1/edit
  def edit
  end

  # POST /predators
  # POST /predators.json
  def create
    @predator = Predator.new(predator_params)

    respond_to do |format|
      if @predator.save
        format.html { redirect_to @predator, notice: 'Predator was successfully created.' }
        format.json { render :show, status: :created, location: @predator }
      else
        format.html { render :new }
        format.json { render json: @predator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predators/1
  # PATCH/PUT /predators/1.json
  def update
    respond_to do |format|
      if @predator.update(predator_params)
        format.html { redirect_to @predator, notice: 'Predator was successfully updated.' }
        format.json { render :show, status: :ok, location: @predator }
      else
        format.html { render :edit }
        format.json { render json: @predator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predators/1
  # DELETE /predators/1.json
  def destroy
    @predator.destroy
    respond_to do |format|
      format.html { redirect_to predators_url, notice: 'Predator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_predator
      @predator = Predator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def predator_params
      params.require(:predator).permit(:name)
    end
end
