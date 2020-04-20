class RenameColumnLanguage < ActiveRecord::Migration[6.0]
  def change
    rename_column :wants, :languages, :language
  end
end
