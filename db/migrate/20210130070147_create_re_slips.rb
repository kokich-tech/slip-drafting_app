class CreateReSlips < ActiveRecord::Migration[6.0]
  def change
    create_table :re_slips do |t|

      t.timestamps
    end
  end
end
