class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :make
      t.belongs_to :cart
      t.timestamps
    end
  end
end
