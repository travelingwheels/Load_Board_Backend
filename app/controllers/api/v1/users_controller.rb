class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show]

  # GET /users
  def index
    @users = User.all
    user_json = UserSerializer.new(@users).serialized_json
    render json: user_json
  end

  # GET /users/1
  def show
    render json: UserSerializer.new(@user).serialized_json
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by_id(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :truck_number, :password_digest)
    end
end
