class CollectionsController < ApplicationController

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

end
