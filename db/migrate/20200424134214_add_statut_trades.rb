class AddStatutTrades < ActiveRecord::Migration[6.0]
  def change
    add_column :trades, :statut, :string
  end
end
