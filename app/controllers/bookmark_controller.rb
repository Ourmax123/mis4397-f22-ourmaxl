class BookmarkController < ApplicationController
  def update
    bookmark = Bookmark.where(post: Post.find(params[:post]), user: current_user)
    if bookmark == []
      # Create the bookmark
      Bookmark.create(post: Post.find(params[:post]), user: current_user)
      @bookmark_exists = true
    else
      #delete the bookmark
      bookmark.destroy_all
      @bookmark_exists = false
    end
  
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
