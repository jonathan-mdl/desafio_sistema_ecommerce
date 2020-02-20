class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :quantity
      t.references :product, foreign_key: true
      t.references :color, foreign_key: true
      t.references :size, foreign_key: true

      t.timestamps
    end
  end
end