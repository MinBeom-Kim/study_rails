class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :manager_email, null: false
      t.string :manager_pw, null: false

      t.timestamps
    end
  end
end
