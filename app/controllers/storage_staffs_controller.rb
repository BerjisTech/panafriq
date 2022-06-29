# frozen_string_literal: true

class StorageStaffsController < ApplicationController
  before_action :set_storage_staff, only: %i[show edit update destroy]

  # GET /storage_staffs or /storage_staffs.json
  def index
    @storage_staffs = StorageStaff.all
  end

  # GET /storage_staffs/1 or /storage_staffs/1.json
  def show; end

  # GET /storage_staffs/new
  def new
    @storage_staff = StorageStaff.new
  end

  # GET /storage_staffs/1/edit
  def edit; end

  # POST /storage_staffs or /storage_staffs.json
  def create
    @storage_staff = StorageStaff.new(storage_staff_params)

    respond_to do |format|
      if @storage_staff.save
        format.html { redirect_to storage_staff_url(@storage_staff), notice: 'Storage staff was successfully created.' }
        format.json { render :show, status: :created, location: @storage_staff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @storage_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storage_staffs/1 or /storage_staffs/1.json
  def update
    respond_to do |format|
      if @storage_staff.update(storage_staff_params)
        format.html { redirect_to storage_staff_url(@storage_staff), notice: 'Storage staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @storage_staff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @storage_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storage_staffs/1 or /storage_staffs/1.json
  def destroy
    @storage_staff.destroy

    respond_to do |format|
      format.html { redirect_to storage_staffs_url, notice: 'Storage staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_storage_staff
    @storage_staff = StorageStaff.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def storage_staff_params
    params.require(:storage_staff).permit(:user_id, :storage_id, :invited_on, :joined_on, :is_active, :left_on,
                                          :reason_for_leaving, :staff_designation, :invited_by)
  end
end
