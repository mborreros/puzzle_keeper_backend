class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # user server calls
  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  post "/users" do
    user = User.create(
      name: params[:name],
      bio: params[:bio],
      review_count: 0
    )
    user.to_json
  end

  # wishlist server calls
  get "/wishlist" do
    wishlist = Puzzle.where("owned=0").order("created_at DESC")
    wishlist.to_json
  end

  post "/wishlist" do
    wishPuzzle = Puzzle.create(
      title: params[:title],
      pieces: params[:pieces],
      manufacturer: params[:manufacturer],
      style: params[:style],
      purchase_link: params[:purchase_link],
      price: params[:price],
      image: params[:image],
      owned: false
    )
    wishPuzzle.to_json
  end

  delete "/wishlist/:id" do 
    entry = Puzzle.find(params[:id])
    entry.destroy
    entry.to_json
  end

  patch "/wishlist/:id" do 
    entry = Puzzle.find(params[:id])
    entry.update(
      owned: params[:owned]
    )
    entry.to_json
  end

  # collection server calls
  get "/collection" do
    collection = Puzzle.where("owned=1").order("created_at DESC")
    collection.to_json
  end

  post "/collection" do
    collectionPuzzle = Puzzle.create(
      title: params[:title],
      pieces: params[:pieces],
      manufacturer: params[:manufacturer],
      style: params[:style],
      purchase_link: params[:purchase_link],
      price: params[:price],
      image: params[:image],
      owned: true
    )
    collectionPuzzle.to_json
  end

  get "/collection/:id" do
    entry = Puzzle.find(params[:id])
    entry.to_json
  end

  delete "/collection/:id" do 
    entry = Puzzle.find(params[:id])
    entry.destroy
    entry.to_json
  end

  # review server calls
  get "/reviews" do
    allPuzzleReviews = Review.all
    allPuzzleReviews.to_json
  end

  get "/reviews/:id" do
    puzzleReviews = Puzzle.find(params[:id]).reviews.order("created_at DESC")
    puzzleReviews.to_json
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
