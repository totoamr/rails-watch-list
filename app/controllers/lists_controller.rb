class ListsController < ApplicationController

  before_action :set_bookmark, only: %i[new create]
  def new
    @bookmark = Bookmark.new
  end
  def create
    @bookmarks = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_bookmarks_path(@list)
  end
  private
  def set_bookmark
    @bookmark = Bookmark.find(params[:bookmark_id])
  end
  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
