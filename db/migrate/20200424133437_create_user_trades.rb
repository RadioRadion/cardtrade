class CreateUserTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :user_trades do |t|
      t.references :user, null: false, foreign_key: true
      t.references :trade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
