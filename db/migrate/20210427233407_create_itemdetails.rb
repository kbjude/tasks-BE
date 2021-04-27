class CreateItemdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :itemdetails do |t|
      t.integer :hoursspent
      t.integer :minutes
      t.text :description
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
