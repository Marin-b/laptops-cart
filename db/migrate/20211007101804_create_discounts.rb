class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.integer :min_quantity
      t.integer :max_quantity
      t.integer :type_of
      t.date :start_date
      t.date :end_date
      t.references :laptop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
