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
      review_count: 0,
      join_date: timestamp
    )
    user.to_json
  end

end
