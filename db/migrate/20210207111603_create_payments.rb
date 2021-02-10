class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :purposepay_id, null: false
      t.text  :store_description, null: false
      t.integer :type_id, null: false
      t.integer :price, null:false
      t.text  :staff_name
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
