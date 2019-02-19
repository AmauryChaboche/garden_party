class AddPhotoToGardens < ActiveRecord::Migration[5.2]
  def change
    add_column :gardens, :photo, :string
  end
end
