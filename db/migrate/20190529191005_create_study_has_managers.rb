class CreateStudyHasManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :study_has_managers do |t|
      t.references :study, foreign_key: true
      t.references :manager, foreign_key: true
      t.boolean :approve

      t.timestamps
    end
  end
end
