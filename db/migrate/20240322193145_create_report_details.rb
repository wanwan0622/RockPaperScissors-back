class CreateReportDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :report_details do |t|
      t.text :content, null: false

      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
