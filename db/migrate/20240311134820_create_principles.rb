class CreatePrinciples < ActiveRecord::Migration[6.1]
  def change
    create_table :principles do |t|
      t.string :principle_first, null: false, limit: 35
      t.string :principle_second, null: false, limit: 35
      t.string :principle_third, null: false, limit: 35
      t.string :principle_fourth, limit: 35
      t.string :principle_fifth, limit: 35
      t.string :principle_sixth, limit: 35
      t.string :principle_seventh, limit: 35
      t.string :principle_eighth, limit: 35
      t.string :principle_ninth, limit: 35
      t.string :principle_tenth, limit: 35

      t.integer :id_first, null: false
      t.string :why_first, null: false, limit: 100
      t.string :how_first, null: false, limit: 100
      t.string :when_first, limit: 100
      t.string :situation_first, limit: 100
      t.string :where_first, limit: 100
      t.string :who_first, limit: 100
      t.string :what_first, limit: 100
      t.string :other_first, limit: 100
      
      t.integer :id_second, null: false
      t.string :why_second, null: false, limit: 100
      t.string :how_second, null: false, limit: 100
      t.string :when_second, limit: 100
      t.string :situation_second, limit: 100
      t.string :where_second, limit: 100
      t.string :who_second, limit: 100
      t.string :what_second, limit: 100
      t.string :other_second, limit: 100

      t.integer :id_third, null: false
      t.string :why_third, null: false, limit: 100
      t.string :how_third, null: false, limit: 100
      t.string :when_third, limit: 100
      t.string :situation_third, limit: 100
      t.string :where_third, limit: 100
      t.string :who_third, limit: 100
      t.string :what_third, limit: 100
      t.string :other_third, limit: 100

      # TODO: 他テーブルが作成できたら参照する
      t.references :user, null: false, foreign_key: true, index: {unique: true}
      t.references :partner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
