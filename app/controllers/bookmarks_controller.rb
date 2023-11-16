class BookmarksController < ApplicationController
  def new
    @bookmarks = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to list_path(list)
  end

  private

  def bookmark_params
	  params.require(:bookmark).permit(:comment)
	end
end
