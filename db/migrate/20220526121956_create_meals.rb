class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :category_id, null: false
      t.integer :eat_time_id, null: false
      t.string :food, null: false
      t.integer :calorie, null: false
      t.integer :protein, null: false
      t.integer :fat, null: false
      t.integer :carbo, null: false
      t.integer :volume, null: false
      t.references :user, null: false, foreign_key: true
      t.references :record_date, null: false, type: :date
      t.timestamps
    end
    add_foreign_key :meals, :records, column: :record_date_id, primary_key: :start_time
  end
end
