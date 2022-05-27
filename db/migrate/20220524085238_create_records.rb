class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records, id: false do |t|
      t.date :start_time, null: false, primary_key: true
      t.integer :total_calorie, default: 0
      t.integer :total_protein, default: 0
      t.integer :total_fat, default: 0
      t.integer :total_carbo, default: 0
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
