class BootsController < ApplicationController
  before_action :set_boot, only: [:show, :edit, :update, :destroy]

  # GET /boots
  # GET /boots.json
  def index
    @boots = Boot.all
  end

  # GET /boots/1
  # GET /boots/1.json
  def show
  end

  # GET /boots/new
  def new
    @boot = Boot.new
  end

  # GET /boots/1/edit
  def edit
  end

  # POST /boots
  # POST /boots.json
  def create
    @boot = Boot.new(boot_params)

    respond_to do |format|
      if @boot.save
        format.html { redirect_to @boot, notice: 'Boot was successfully created.' }
        format.json { render :show, status: :created, location: @boot }
      else
        format.html { render :new }
        format.json { render json: @boot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boots/1
  # PATCH/PUT /boots/1.json
  def update
    respond_to do |format|
      if @boot.update(boot_params)
        format.html { redirect_to @boot, notice: 'Boot was successfully updated.' }
        format.json { render :show, status: :ok, location: @boot }
      else
        format.html { render :edit }
        format.json { render json: @boot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boots/1
  # DELETE /boots/1.json
  def destroy
    @boot.destroy
    respond_to do |format|
      format.html { redirect_to boots_url, notice: 'Boot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boot
      @boot = Boot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boot_params
      params.require(:boot).permit(:color, :style, :gender, :size, :clay_type)
    end
end
