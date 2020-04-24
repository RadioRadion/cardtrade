class RemoveUsersidToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :users, column: :users_id
  end
end
