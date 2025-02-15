class AddCountryToUser < ActiveRecord::Migration[8.0]
  def change
    add_reference :users, :country, null: false, foreign_key: true
  end
end
