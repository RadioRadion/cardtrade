class RemoveForeignkeyuserToUser < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :users, name: :users
  end
end
