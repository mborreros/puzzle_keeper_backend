class ReviewsController < ApplicationController

  get "/reviews" do
    allPuzzleReviews = Review.all
    allPuzzleReviews.to_json
  end

  get "/reviews/:id" do
    puzzleReviews = Puzzle.find(params[:id]).reviews.order("created_at DESC")
    # pulls complete user profile associated with the review's user_id, rather than just the id number
    puzzleReviews.to_json(include: [:user])
  end

  post "/reviews" do
    review = Review.create(
      puzzle_id: params[:puzzle_id],
      purchase_reason: params[:purchase_reason],
      purchase_location: params[:purchase_location],
      poster: params[:poster],
      piece_quality: params[:piece_quality],
      piece_quality_desc: params[:piece_quality_desc],
      fit_quality: params[:fit_quality],
      fit_quality_desc: params[:fit_quality_desc],
      finished_quality: params[:finished_quality],
      finished_quality_desc: params[:finished_quality_desc],
      difficulty: params[:difficulty],
      difficulty_desc: params[:difficulty_desc],
      recommend: params[:recommend],
      recommend_desc: params[:recommend_desc],
      user_id: params[:user_id]
    )
    review.to_json
  end

end