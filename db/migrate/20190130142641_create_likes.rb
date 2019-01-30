class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      #Création de nos colonnes
      t.belongs_to :user, index: true
      t.belongs_to :article, index: true
      #Creation d'une colonnes qui nous dit la date de creation et des mise a jours 
      t.timestamps
    end
  end
end
