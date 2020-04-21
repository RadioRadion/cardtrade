class AddPhotoToWants < ActiveRecord::Migration[6.0]
  def change
    add_column :wants, :photo, :string
  end
end
