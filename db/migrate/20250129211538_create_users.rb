class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.integer :age
      t.integer :phone
      t.string :description
      t.string :address
      t.integer :salary
      t.string :occupation
      t.string :gender
      t.date :birthdate

      t.timestamps
    end
  end
end
