class Article < ApplicationRecord
  belongs_to :user, :category, :likes
end
