class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.references :category, foreign_key: true
      t.string :study_name
      t.string :intro
      t.string :goal
      t.string :curriculum
      t.integer :max_number
      t.string :status

      t.timestamps
    end
  end
end
