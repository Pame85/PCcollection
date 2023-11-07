class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.string :sku
      t.string :name
      t.text :description
      t.integer :quantity, default: 0
      t.decimal :price, precision: 10, scale: 2
      t.boolean :available, default: false
      t.string :identifier
      t.string :slug

      t.timestamps
    end
  end
end
