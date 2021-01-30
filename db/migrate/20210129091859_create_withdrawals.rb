class CreateWithdrawals < ActiveRecord::Migration[6.0]
  def change
    create_table :withdrawals do |t|
      t.integer :purpose_id, null: false
      t.text  :store_description, null: false
      t.integer :price, null:false
      t.integer :price_10000
      t.integer :price_5000
      t.integer :price_1000
      t.integer :price_500
      t.integer :price_100
      t.integer :price_50
      t.integer :price_5
      t.integer :price_10
      t.integer :price_1
      t.text  :staff_name
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
