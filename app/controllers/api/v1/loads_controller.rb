class Api::V1::LoadsController < ApplicationController
  before_action :set_load, only: [:show]

  # GET /loads
  def index
    if  logged_in?
    @loads = current_user.loads

    render json: LoadSerializer.new(@loads).serialized_json
    else
      render json: {
        error: "You must be logged in to see loads"
      }
    end
  end

  # GET /loads/1
  def show
    render json: LoadSerializer.new(@load).serialized_json
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_load
      @load = Load.find_by_id(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def load_params
      params.require(:load).permit(:customer_name, :city, :state, :user_id)
    end
end
