class CreateDices < ActiveRecord::Migration[7.1]
  def change
    create_table :dices do |t|
      t.integer :number_of_face

      t.timestamps
    end
  end
end
