class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, index: true
      t.integer :price
      t.timestamps
    end
  end
end
