class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :uuid
      t.string :condition
      t.boolean :foil
      t.string :photo
      t.string :language
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
