class Category < ApplicationRecord
  #permet de dire a la class qu'elle a plusieurs articles
  has_many :articles
end
