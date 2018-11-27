class CreateJoinTableItemsOrders < ActiveRecord::Migration[5.2]
  def change
    create_join_table :items, :orders do |t|
       t.index [:item_id, :order_id]
       t.index [:order_id, :item_id]
    end
  end
end
