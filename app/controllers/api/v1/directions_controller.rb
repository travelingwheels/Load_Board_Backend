class Api::V1::DirectionsController < ApplicationController
  before_action :set_direction, only: [:show]

  # GET /directions
  def index
    if  logged_in?
      @directions = current_user.directions

    render json: DirectionSerializer.new(@directions).serialized_json
    else
      render json: {
        error: "Cannot see directions unless your logged in"
      }
    end
  end

  # GET /directions/1
  def show
    render json: DirectionSerializer.new(@direction).serialized_json
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direction
      @direction = Direction.find_by_id(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def direction_params
      params.require(:direction).permit(:content, :load_id)
    end
end
