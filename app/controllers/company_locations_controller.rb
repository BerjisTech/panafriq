# frozen_string_literal: true

class CompanyLocationsController < ApplicationController
  before_action :set_company_location, only: %i[show edit update destroy]

  # GET /company_locations or /company_locations.json
  def index
    @company_locations = CompanyLocation.all
  end

  # GET /company_locations/1 or /company_locations/1.json
  def show; end

  # GET /company_locations/new
  def new
    @company_location = CompanyLocation.new
  end

  # GET /company_locations/1/edit
  def edit; end

  # POST /company_locations or /company_locations.json
  def create
    @company_location = CompanyLocation.new(company_location_params)

    respond_to do |format|
      if @company_location.save
        format.html do
          redirect_to company_location_url(@company_location), notice: 'Company location was successfully created.'
        end
        format.json { render :show, status: :created, location: @company_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_locations/1 or /company_locations/1.json
  def update
    respond_to do |format|
      if @company_location.update(company_location_params)
        format.html do
          redirect_to company_location_url(@company_location), notice: 'Company location was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @company_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_locations/1 or /company_locations/1.json
  def destroy
    @company_location.destroy

    respond_to do |format|
      format.html { redirect_to company_locations_url, notice: 'Company location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_company_location
    @company_location = CompanyLocation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def company_location_params
    params.require(:company_location).permit(:company_id, :products, :services, :name, :user_id)
  end
end
