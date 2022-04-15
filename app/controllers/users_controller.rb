class UsersController < ApplicationController

  get "/users" do
    users = User.all.order("created_at DESC")
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
  
end