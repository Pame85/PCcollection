class CreateJoinTableCollectionsProducts < ActiveRecord::Migration[7.0]
  def change
    create_join_table :collections, :products do |t|
      t.index [:collection_id, :product_id]
      # t.index [:product_id, :collection_id]
    end
  end
end
