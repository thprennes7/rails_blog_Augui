class Like < ApplicationRecord
  belongs_to :user, :article
end
