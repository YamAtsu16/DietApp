class CreateBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :bodies do |t|
      t.datetime :start_time, null: false
      t.integer :weight, null: false
      t.text :memo
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end