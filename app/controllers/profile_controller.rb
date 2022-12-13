class ProfileController < ApplicationController
  include CableReady::Broadcaster
  
  def index
     @posts = Post.all.order(created_at: :desc)
     @post = Post.new
     @users = User.all
  end
  
  def show
    @post = Post.find params[:id]
    @posts = current_user.posts.order(created_at: :desc)
    cable_ready["timeline"].insert_adjacent_html(
      selector: "#timeline",
      position: "afterbegin",
      html: render_to_string(partial: "post", locals: {post: post})
      )
    cable_ready.broadcast
  end
  
   private

    # Only allow a list of trusted parameters through.
    def post_params
      # params.require(:post).permit(:username, :body, :likes_count, :reposts_count)
      params.require(:post).permit(:body, :user_id)
    end
end
