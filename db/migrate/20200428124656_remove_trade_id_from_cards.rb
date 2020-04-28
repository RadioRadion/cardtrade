class RemoveTradeIdFromCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :cards, :trade_id
  end
end
