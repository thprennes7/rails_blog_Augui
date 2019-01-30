class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      #creation de nos colonnes
      t.string :title
      t.string :content
      #Permet de lier avec la table user, category
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      #Creation d'une colonnes qui nous dit la date de creation et des mise a jours
      t.timestamps
    end
  end
end
