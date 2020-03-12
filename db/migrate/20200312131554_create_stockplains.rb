class CreateStockplains < ActiveRecord::Migration[6.0]
  def change
    create_table :stockplains do |t|
      t.integer :stock_code
      t.string :stock_name
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
