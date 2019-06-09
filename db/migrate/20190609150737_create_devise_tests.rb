class CreateDeviseTests < ActiveRecord::Migration[5.2]
  def change
    create_table :devise_tests do |t|

      t.timestamps
    end
  end
end
