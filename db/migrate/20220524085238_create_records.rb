class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.datetime :start_time
      t.integer :total_calorie
      t.integer :total_protein
      t.integer :total_fat
      t.integer :total_carbo
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
