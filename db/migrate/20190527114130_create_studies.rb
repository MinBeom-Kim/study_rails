class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.string :study_name, null: false
      t.string :intro
      t.string :goal
      t.string :curriculum
      t.integer :max_number, null: false, default: 0
      t.boolean :status, null: false, default: false

      t.timestamps
    end
  end
end
