class RemoveCardIdToTrades < ActiveRecord::Migration[6.0]
  def change
    remove_column :trades, :card_id
  end
end
