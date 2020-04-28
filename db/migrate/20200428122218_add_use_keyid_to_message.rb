class AddUseKeyidToMessage < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :users, foreign_key: true
  end
end
