class UserlocationsController < ApplicationController
  before_action :set_userlocation, only: [:show, :edit, :update, :destroy]

  # GET /userlocations
  # GET /userlocations.json
  def index
    @userlocations = Userlocation.all
  end

  # GET /userlocations/1
  # GET /userlocations/1.json
  def show
  end

  # GET /userlocations/new
  def new
    @userlocation = Userlocation.new
  end

  # GET /userlocations/1/edit
  def edit
  end

  # POST /userlocations
  # POST /userlocations.json
  def create
    @userlocation = Userlocation.new(userlocation_params)
    @userlocation.user = current_user
    respond_to do |format|
      if @userlocation.save
        format.html { redirect_to @userlocation, notice: 'Userlocation was successfully created.' }
        format.json { render :show, status: :created, location: @userlocation }
      else
        format.html { render :new }
        format.json { render json: @userlocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userlocations/1
  # PATCH/PUT /userlocations/1.json
  def update
    respond_to do |format|
      if @userlocation.update(userlocation_params)
        format.html { redirect_to @userlocation, notice: 'Userlocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @userlocation }
      else
        format.html { render :edit }
        format.json { render json: @userlocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userlocations/1
  # DELETE /userlocations/1.json
  def destroy
    @userlocation.destroy
    respond_to do |format|
      format.html { redirect_to userlocations_url, notice: 'Userlocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userlocation
      @userlocation = Userlocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userlocation_params
      params.require(:userlocation).permit(:lat, :lng, :user_id)
    end
end
