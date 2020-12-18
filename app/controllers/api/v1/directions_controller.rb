class Api::V1::DirectionsController < ApplicationController
  before_action :set_direction, only: [:show, :update, :destroy]

  # GET /directions
  def index
    @directions = Direction.all

    render json: @directions
  end

  # GET /directions/1
  def show
    render json: @direction
  end

  # POST /directions
  def create
    @direction = Direction.new(direction_params)

    if @direction.save
      render json: @direction, status: :created, location: @direction
    else
      render json: @direction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /directions/1
  def update
    if @direction.update(direction_params)
      render json: @direction
    else
      render json: @direction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /directions/1
  def destroy
    @direction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direction
      @direction = Direction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def direction_params
      params.require(:direction).permit(:content, :load_id)
    end
end
