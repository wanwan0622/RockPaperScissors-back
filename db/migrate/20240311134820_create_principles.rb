class CreatePrinciples < ActiveRecord::Migration[7.1]
  def change
    create_table :principles do |t|
      t.string :principle_first, null: false
      t.string :principle_second, null: false
      t.string :principle_third, null: false
      t.string :principle_fourth
      t.string :principle_fifth
      t.string :principle_sixth
      t.string :principle_seventh
      t.string :principle_eighth
      t.string :principle_ninth
      t.string :principle_tenth

      t.string :why_first
      t.string :what_first
      t.string :when_first
      t.string :who_first
      t.string :how_first
      t.string :where_first
      t.string :other_first
      
      t.string :why_second
      t.string :what_second
      t.string :when_second
      t.string :who_second
      t.string :how_second
      t.string :where_second
      t.string :other_second

      t.string :why_third
      t.string :what_third
      t.string :when_third
      t.string :who_third
      t.string :how_third
      t.string :where_third
      t.string :other_third

      # t.references :user, null: false, foreign_key: true
      # t.references :partner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
