class CarmodelsController < ApplicationController
  before_action :set_carmodel, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @carmodels = Carmodel.all
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @carmodel = Carmodel.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @carmodel = Carmodel.new(carmodel_params)

    respond_to do |format|
      if @carmodel.save
        format.html { redirect_to @carmodel, notice: "Car model was successfully created." }
        format.json { render :show, status: :created, location: @carmodel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @carmodel.update(carmodel_params)
        format.html { redirect_to @carmodel, notice: "Car model was successfully updated." }
        format.json { render :show, status: :ok, location: @carmodel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @carmodel.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "Car model was successfully destroyed." }
      format.json { head :no_content }
    end
  end
 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carmodel
      @carmodel = Carmodel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carmodel_params
      params.require(:carmodel).permit(:brand, :model, :price)
    end
end
