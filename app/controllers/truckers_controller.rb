class TruckersController < ApplicationController
  before_action :set_trucker, only: %i[ show edit update destroy ]

  # GET /truckers or /truckers.json
  def index
    @truckers = Trucker.all
  end

  # GET /truckers/1 or /truckers/1.json
  def show
  end

  # GET /truckers/new
  def new
    @trucker = Trucker.new
  end

  # GET /truckers/1/edit
  def edit
  end

  # POST /truckers or /truckers.json
  def create
    @trucker = Trucker.new(trucker_params)

    respond_to do |format|
      if @trucker.save
        format.html { redirect_to trucker_url(@trucker), notice: "Trucker was successfully created." }
        format.json { render :show, status: :created, location: @trucker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trucker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truckers/1 or /truckers/1.json
  def update
    respond_to do |format|
      if @trucker.update(trucker_params)
        format.html { redirect_to trucker_url(@trucker), notice: "Trucker was successfully updated." }
        format.json { render :show, status: :ok, location: @trucker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trucker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truckers/1 or /truckers/1.json
  def destroy
    @trucker.destroy

    respond_to do |format|
      format.html { redirect_to truckers_url, notice: "Trucker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trucker
      @trucker = Trucker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trucker_params
      params.require(:trucker).permit(:user_id, :is_company, :country, :truck_staff, :drivers)
    end
end
