class CreateToDos < ActiveRecord::Migration[6.1]
  def change
    create_table :to_dos do |t|
      t.text :todo, null: false
      t.boolean :is_completed, null: false, default: false

      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
