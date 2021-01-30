class CreateSecondtops < ActiveRecord::Migration[6.0]
  def change
    create_table :secondtops do |t|

      t.timestamps
    end
  end
end
