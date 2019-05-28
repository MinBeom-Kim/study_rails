class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.string :study_name
      t.references :category, foreign_key: true
      t.string :intro
      t.string :goal
      t.string :curriculum
      t.integer :max_number
      t.boolean :status

      t.timestamps
    end
  end
end
