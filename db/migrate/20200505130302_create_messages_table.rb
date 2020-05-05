class CreateMessagesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
    end
  end
end
