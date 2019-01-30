class User < ApplicationRecord
  #Permet de dirre a la classe qu'elle a plusieurs articles, comments, likes
  has_many :articles
  has_many :comments
  has_many :likes
end
