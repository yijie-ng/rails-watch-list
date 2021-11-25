class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @list.reviews.create!(review_params)

    redirect_to list_path(@list)
    # @review = Review.new(review_params)
    # @review.list = @list
    # if @review.save
    #   redirect_to list_path(@list)
    # else
    #   render :show
    # end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
