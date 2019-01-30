class User < ApplicationRecord
  has_many :articles, :comments, :likes
end
