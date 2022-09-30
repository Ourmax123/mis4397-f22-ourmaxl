class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :author
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
