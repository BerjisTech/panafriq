class TripFinesController < ApplicationController
  before_action :set_trip_fine, only: %i[ show edit update destroy ]

  # GET /trip_fines or /trip_fines.json
  def index
    @trip_fines = TripFine.all
  end

  # GET /trip_fines/1 or /trip_fines/1.json
  def show
  end

  # GET /trip_fines/new
  def new
    @trip_fine = TripFine.new
  end

  # GET /trip_fines/1/edit
  def edit
  end

  # POST /trip_fines or /trip_fines.json
  def create
    @trip_fine = TripFine.new(trip_fine_params)

    respond_to do |format|
      if @trip_fine.save
        format.html { redirect_to trip_fine_url(@trip_fine), notice: "Trip fine was successfully created." }
        format.json { render :show, status: :created, location: @trip_fine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trip_fine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_fines/1 or /trip_fines/1.json
  def update
    respond_to do |format|
      if @trip_fine.update(trip_fine_params)
        format.html { redirect_to trip_fine_url(@trip_fine), notice: "Trip fine was successfully updated." }
        format.json { render :show, status: :ok, location: @trip_fine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trip_fine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_fines/1 or /trip_fines/1.json
  def destroy
    @trip_fine.destroy

    respond_to do |format|
      format.html { redirect_to trip_fines_url, notice: "Trip fine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_fine
      @trip_fine = TripFine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_fine_params
      params.require(:trip_fine).permit(:trip_id, :fine, :price)
    end
end
