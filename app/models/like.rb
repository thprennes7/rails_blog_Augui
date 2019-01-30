class Like < ApplicationRecord
  #Permet de dire a la class qu'elle appartienta la table user, article
  belongs_to :user
  belongs_to :article
end
