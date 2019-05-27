class CreateCategoryHasStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :category_has_studies do |t|
      t.references :category, foreign_key: true
      t.references :study, foreign_key: true

      t.timestamps
    end
  end
end
