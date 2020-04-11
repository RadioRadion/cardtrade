class AddTradeidToCards < ActiveRecord::Migration[6.0]
  def change
    add_reference :cards, :trade, foreign_key: true
  end
end
