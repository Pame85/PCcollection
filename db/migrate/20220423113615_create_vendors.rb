class CreateVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendors do |t|
      t.references :industry, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :phone
      t.string :address_line_1
      t.string :address_line_2
      t.string :town
      t.string :facebook
      t.string :instagram
      t.string :website
      t.integer :products_count, default: 0
      t.string :identifier
      t.string :slug

      t.timestamps
    end
  end
end
