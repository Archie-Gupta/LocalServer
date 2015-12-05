class deviceController < ApplicationController
  before_action :set_device, only: [:show, :edit, :update, :destroy]

  # GET /device

  # GET /device.json
  def index
    @device = Device.all
  end

  # GET /device/1
  # GET /device/1.json
  def show
  end

  # GET /device/new
  def new
    @device = Device.new
  end

  # GET /device/1/edit
  def edit
  end

  # POST /device
  # POST /device.json
  def create
    @device = device.new(device_params)

    respond_to do |format|
      if @device.save
        format.html { redirect_to @device, notice: 'Device was successfully created.' }
        format.json { render :show, status: :created, location: @device }
      else
        format.html { render :new }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device/1
  # PATCH/PUT /device/1.json
  def update
    respond_to do |format|
      if @device.update(device_params)
        format.html { redirect_to @device, notice: 'device was successfully updated.' }
        format.json { render :show, status: :ok, location: @device }
      else
        format.html { render :edit }
        format.json { render json: @device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device/1
  # DELETE /device/1.json
  def destroy
    @device.destroy
    respond_to do |format|
      format.html { redirect_to device_url, notice: 'device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device
      @device = device.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_params
      params.require(:device).permit(:device)
    end
end
