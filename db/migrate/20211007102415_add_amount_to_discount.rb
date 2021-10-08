class AddAmountToDiscount < ActiveRecord::Migration[6.1]
  def change
    add_column :discounts, :amount, :float
  end
end
