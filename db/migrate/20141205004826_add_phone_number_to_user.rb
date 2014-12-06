class AddPhoneNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :phone_number, :integer
    add_index :users, :phone_number, unique: true
    add_column :users, :code_area, :string
  end
end
