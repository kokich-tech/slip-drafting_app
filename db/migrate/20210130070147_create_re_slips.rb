class CreateReSlips < ActiveRecord::Migration[6.0]
  def change
    create_table :re_slips do |t|
      t.references :user, foreign_key: true
      t.timestamps
      t.references  :withdrawal,  foreign_key:  :true
    end
  end
end
