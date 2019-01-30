class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      #Creation de nos colonnes
      t.string :content
      #Permet de lier avec la table user, article
      t.belongs_to :user, index: true
      t.belongs_to :article, index: true
      #Creation d'une colonnes qui nous dit la date de creation et des mise a jours
      t.timestamps
    end
  end
end
