class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    # @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    params[:bookmark][:movie_id].each do |movie|
      @list.bookmarks.create!(movie_id: movie, comment: params[:bookmark][:comment])
    end

    redirect_to list_path(@list)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
