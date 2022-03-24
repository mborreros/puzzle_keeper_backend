class User < ActiveRecord::Base
  has_many :reviews
  has_many :puzzles, through: :reviews
end