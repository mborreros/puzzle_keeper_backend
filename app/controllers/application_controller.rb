class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # get all users
  get "/users" do
    users = User.all
    users.to_json
  end

  post "/users" do
    user = User.create(
      name: params[:name],
      bio: params[:bio],
      review_count: 0
    )
    user.to_json
  end

  get "/wishlist" do
    wishlist = Puzzle.where("owned=0")
    wishlist.to_json
  end

  #remove
  delete "/wishlist/:id" do 
    entry = Puzzle.find(params[:id])
    entry.destroy
    entry.to_json
  end

  #patch
  patch "/wishlist/:id" do 
    entry = Puzzle.find(params[:id])
    entry.update(
      owned: params[:owned]
    )
    entry.to_json
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

end
