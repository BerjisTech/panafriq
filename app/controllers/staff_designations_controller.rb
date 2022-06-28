class StaffDesignationsController < ApplicationController
  before_action :set_staff_designation, only: %i[ show edit update destroy ]

  # GET /staff_designations or /staff_designations.json
  def index
    @staff_designations = StaffDesignation.all
  end

  # GET /staff_designations/1 or /staff_designations/1.json
  def show
  end

  # GET /staff_designations/new
  def new
    @staff_designation = StaffDesignation.new
  end

  # GET /staff_designations/1/edit
  def edit
  end

  # POST /staff_designations or /staff_designations.json
  def create
    @staff_designation = StaffDesignation.new(staff_designation_params)

    respond_to do |format|
      if @staff_designation.save
        format.html { redirect_to staff_designation_url(@staff_designation), notice: "Staff designation was successfully created." }
        format.json { render :show, status: :created, location: @staff_designation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @staff_designation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_designations/1 or /staff_designations/1.json
  def update
    respond_to do |format|
      if @staff_designation.update(staff_designation_params)
        format.html { redirect_to staff_designation_url(@staff_designation), notice: "Staff designation was successfully updated." }
        format.json { render :show, status: :ok, location: @staff_designation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @staff_designation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_designations/1 or /staff_designations/1.json
  def destroy
    @staff_designation.destroy

    respond_to do |format|
      format.html { redirect_to staff_designations_url, notice: "Staff designation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_designation
      @staff_designation = StaffDesignation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def staff_designation_params
      params.require(:staff_designation).permit(:name)
    end
end
