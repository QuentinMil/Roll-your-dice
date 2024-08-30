class CreateUserRolls < ActiveRecord::Migration[7.1]
  def change
    create_table :user_rolls do |t|
      t.references :user, null: false, foreign_key: true
      t.references :roll, null: false, foreign_key: true

      t.timestamps
    end
  end
end
