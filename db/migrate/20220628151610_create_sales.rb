class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales, id: :uuid do |t|
      t.uuid :company_id
      t.boolean :is_product
      t.boolean :is_service
      t.json :products
      t.json :services
      t.float :amount
      t.integer :status
      t.uuid :customer_id

      t.timestamps
    end
    add_index :sales, :company_id
    add_index :sales, :customer_id
  end
end
