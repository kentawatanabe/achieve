class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.build(comment_params)
    @blog = @comment.blog

    respond_to do |format|
      if @comment.save
        format.js{ render :index}
      else
        format.html{render :new}
        format.json{ render json: @comment.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @comment= Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.js{render :index}
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:blog_id, :content)
  end

end
