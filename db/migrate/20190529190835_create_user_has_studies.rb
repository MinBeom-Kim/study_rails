class CreateUserHasStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :user_has_studies do |t|
      t.references :user, foreign_key: true
      t.references :study, foreign_key: true
      t.integer :user_role

      t.timestamps
    end
  end
end
