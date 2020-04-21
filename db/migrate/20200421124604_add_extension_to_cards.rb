class AddExtensionToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :extension, :string
  end
end

