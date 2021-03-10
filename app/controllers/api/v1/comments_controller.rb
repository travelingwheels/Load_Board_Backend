class Api::V1::CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    if logged_in?
      @comments = current_user.comments

       render json: CommentSerializer.new(@comments)
    else
      render json: {
        error: "Cannot see comments unless your logged in"
      }
    end
  end

  # GET /comments/1(2)
  def show
    render json: CommentSerializer.new(@comment)
  end

  # POST /comments
  def create
    @comment = current_user.comments.build(comment_params)

    if @comment.save
      render json: CommentSerializer.new(@comment), status: :created
    else
      error_resp = {
        error: @comment.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: CommentSerializer.new(@comment), status: :ok
    else
      error_resp = {
        error: @comment.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    if @comment.destroy
      render json:  { data: "Comment successfully destroyed" }, status: :ok
    else
      error_resp = {
        error: "Comment not found and not destroyed"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find_by_id(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:content, :user_id, :direction_id)
    end
end
