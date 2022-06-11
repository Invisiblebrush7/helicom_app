class AddTypeOfUserToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :type_of_user, :string
  end
end
