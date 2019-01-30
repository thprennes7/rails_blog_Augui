class Comment < ApplicationRecord
  #Permet de dire a la class qu'elle appartient à la table user, article
  belongs_to :user
  belongs_to :article
end
