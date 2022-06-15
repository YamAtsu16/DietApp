class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_name, null: false
      t.text :text
      t.integer :calorie, null: false
      t.integer :protein, null: false
      t.integer :fat, null: false
      t.integer :carbo, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
