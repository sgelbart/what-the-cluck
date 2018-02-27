class HatchesController < ApplicationController
  before_action :set_hatch, only: [:show, :edit, :update, :destroy]

  # GET /hatches
  # GET /hatches.json
  def index
    @hatches = Hatch.all
  end

  # GET /hatches/1
  # GET /hatches/1.json
  def show
  end

  # GET /hatches/new
  def new
    @hatch = Hatch.new
    2.times { @hatch.images.build}
  end

  # GET /hatches/1/edit
  def edit
    2.times { @hatch.images.build}
  end

  # POST /hatches
  # POST /hatches.json
  def create
    @hatch = Hatch.new(hatch_params)
    respond_to do |format|
      if @hatch.save
        @post = Post.new(postable_type: 'Hatch', postable_id: @hatch.id).save()
        format.html { redirect_to @hatch, notice: 'Hatch was successfully created.' }
        format.json { render :show, status: :created, location: @hatch }
      else
        format.html { render :new }
        format.json { render json: @hatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hatches/1
  # PATCH/PUT /hatches/1.json
  def update
    respond_to do |format|
      if @hatch.update(hatch_params)
        format.html { redirect_to @hatch, notice: 'Hatch was successfully updated.' }
        format.json { render :show, status: :ok, location: @hatch }
      else
        format.html { render :edit }
        format.json { render json: @hatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hatches/1
  # DELETE /hatches/1.json
  def destroy
    @hatch.destroy
    respond_to do |format|
      format.html { redirect_to hatches_url, notice: 'Hatch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hatch
      @hatch = Hatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hatch_params
      params.require(:hatch).permit(:name, :description, :hatched_at, :chicken_amount, :hatchery_id, images_attributes: [:id, :image])
    end
end
