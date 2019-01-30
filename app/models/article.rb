class Article < ApplicationRecord
  #Permet de dire a notre class qu'elle appartient à la class user, category
  belongs_to :user
  belongs_to :category
  #Permet de dire a la class qu'elle a plusieurs comments, likes
  has_many :comments
  has_many :likes
end
