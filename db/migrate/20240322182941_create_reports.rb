class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.string :title, null: false
      t.text :decision
      t.float :todo_progress

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
