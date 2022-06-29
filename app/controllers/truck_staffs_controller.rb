# frozen_string_literal: true

class TruckStaffsController < ApplicationController
  before_action :set_truck_staff, only: %i[show edit update destroy]

  # GET /truck_staffs or /truck_staffs.json
  def index
    @truck_staffs = TruckStaff.all
  end

  # GET /truck_staffs/1 or /truck_staffs/1.json
  def show; end

  # GET /truck_staffs/new
  def new
    @truck_staff = TruckStaff.new
  end

  # GET /truck_staffs/1/edit
  def edit; end

  # POST /truck_staffs or /truck_staffs.json
  def create
    @truck_staff = TruckStaff.new(truck_staff_params)

    respond_to do |format|
      if @truck_staff.save
        format.html { redirect_to truck_staff_url(@truck_staff), notice: 'Truck staff was successfully created.' }
        format.json { render :show, status: :created, location: @truck_staff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @truck_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truck_staffs/1 or /truck_staffs/1.json
  def update
    respond_to do |format|
      if @truck_staff.update(truck_staff_params)
        format.html { redirect_to truck_staff_url(@truck_staff), notice: 'Truck staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @truck_staff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @truck_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truck_staffs/1 or /truck_staffs/1.json
  def destroy
    @truck_staff.destroy

    respond_to do |format|
      format.html { redirect_to truck_staffs_url, notice: 'Truck staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_truck_staff
    @truck_staff = TruckStaff.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def truck_staff_params
    params.require(:truck_staff).permit(:user_id, :trucker_id, :invited_on, :joined_on, :is_active, :left_on,
                                        :reason_for_leaving, :staff_designation, :invited_by)
  end
end
