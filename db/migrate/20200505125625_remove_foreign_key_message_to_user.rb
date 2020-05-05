class RemoveForeignKeyMessageToUser < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :messages, index: true, foreign_key: true
  end
end
