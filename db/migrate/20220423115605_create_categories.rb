class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :products_count, default: 0
      t.string :identifier
      t.string :slug

      t.timestamps
    end
  end
end
