class LoadsController < ApplicationController
  before_action :set_load, only: [:show, :update, :destroy]

  # GET /loads
  def index
    @loads = Load.all

    render json: @loads
  end

  # GET /loads/1
  def show
    render json: @load
  end

  # POST /loads
  def create
    @load = Load.new(load_params)

    if @load.save
      render json: @load, status: :created, location: @load
    else
      render json: @load.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /loads/1
  def update
    if @load.update(load_params)
      render json: @load
    else
      render json: @load.errors, status: :unprocessable_entity
    end
  end

  # DELETE /loads/1
  def destroy
    @load.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_load
      @load = Load.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def load_params
      params.require(:load).permit(:customer_name, :city, :state, :user_id)
    end
end
