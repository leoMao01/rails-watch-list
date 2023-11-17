class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    # on va stocker des valeurs dans bookmark
    @bookmark = Bookmark.new(bookmark_params)
    # on va récupérer les valeurs de list (name, id, etc...)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    # on va stocker les valeurs de list dans bookmark
    if @bookmark.save
      redirect_to list_path(@list)
    else
      #si ça sauvegarde pas, message d'erreur
    render :new, status: :unprocessable_entity
    end
  end

  private

  def bookmark_params
	  params.require(:bookmark).permit(:comment, :movie_id)
	end

end
