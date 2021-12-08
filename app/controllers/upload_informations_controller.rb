class UploadInformationsController < ApplicationController
  before_action :set_upload_information, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /upload_informations or /upload_informations.json

  def index
    @upload_informations = UploadInformation.all

    respond_to do |format|
      format.html
      format.csv { send_data @upload_informations.as_csv}
    end
  end

  # GET /upload_informations/1 or /upload_informations/1.json
  def show
  end

  # GET /upload_informations/new
  def new

    @upload_information = UploadInformation.new

  end


  # GET /upload_informations/1/edit
  def edit
  end

  # POST /upload_informations or /upload_informations.json
  def create

    @upload_information = UploadInformation.new(upload_information_params)
    @upload_information.user = current_user

    respond_to do |format|
      if @upload_information.save
        format.html { redirect_to @upload_information, notice: "Upload information was successfully created." }
        format.json { render :show, status: :created, location: @upload_information }
      else
        format.html { render :new }
        format.json { render json: @upload_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upload_informations/1 or /upload_informations/1.json
  def update
    respond_to do |format|
      if @upload_information.update(upload_information_params)
        format.html { redirect_to @upload_information, notice: "Upload information was successfully updated." }
        format.json { render :show, status: :ok, location: @upload_information }
      else
        format.html { render :edit }
        format.json { render json: @upload_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upload_informations/1 or /upload_informations/1.json
  def destroy
    @upload_information.destroy
    respond_to do |format|
      format.html { redirect_to upload_informations_url, notice: "Upload information was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_upload_information
    @upload_information = UploadInformation.find_by(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def upload_information_params
    params.require(:upload_information).permit(:fornavn, :efternavn, :postnummer, :addresse, :user_id)
  end
end
