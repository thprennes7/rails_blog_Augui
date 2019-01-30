class Like < ApplicationRecord
  #Permet de dire a la class qu'elle appartienta la class user, article
  belongs_to :user
  belongs_to :article
end
