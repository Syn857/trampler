class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.integer :delivery_time
      t.integer :revisions
      t.string :requirements

      t.timestamps
    end
  end
end
