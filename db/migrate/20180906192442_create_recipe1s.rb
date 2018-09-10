class CreateRecipe1s < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe1s do |t|
      t.string :title
      t.text :instructions

      t.timestamps
    end
  end
end
