class CreateRolls < ActiveRecord::Migration[7.1]
  def change
    create_table :rolls do |t|
      t.references :dice, null: false, foreign_key: true
      t.integer :dice_result

      t.timestamps
    end
  end
end
