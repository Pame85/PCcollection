class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :reference
      t.string :name
      t.string :phone
      t.string :email
      t.string :address_line_1
      t.string :address_line_2
      t.string :town
      t.string :postcode
      t.decimal :subtotal, precision: 10, scale: 2
      t.decimal :shipping_cost, precision: 10, scale: 2
      t.decimal :total, precision: 10, scale: 2
      t.boolean :paid, default: false
      t.integer :status
      t.string :identifier
      t.string :slug

      t.timestamps
    end
  end
end
