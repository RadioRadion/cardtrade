class AddLanguageToWants < ActiveRecord::Migration[6.0]
  def change
    add_column :wants, :languages, :string
  end
end
