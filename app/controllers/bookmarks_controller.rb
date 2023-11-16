class BookmarksController < ApplicationController
  def new
    @bookmarks = Bookmark.new
  end

  def create
    @bookmarks = Bookmark.new
  end

  private

  def bookmark_params
	  params.require(:bookmark).permit(:name)
	end
end
