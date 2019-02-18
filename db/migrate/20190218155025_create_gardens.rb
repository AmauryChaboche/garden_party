class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :title
      t.text :description
      t.string :product
      t.text :address
      t.integer :price
      t.integer :surface

      t.timestamps
    end
  end
end
