class AddCardidToTrades < ActiveRecord::Migration[6.0]
  def change
    add_reference :trades, :card, foreign_key: true
  end
end

