class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.string :name, null: false, limit: 10

      t.references :user, null: false, foreign_key: true, index: {unique: true}

      t.timestamps
    end
  end
end
