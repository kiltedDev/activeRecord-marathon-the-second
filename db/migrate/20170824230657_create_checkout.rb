class CreateCheckout < ActiveRecord::Migration[5.1]
  def change
    create_table :checkouts do |t|
      t.date :checkout_date, null: false
      t.date :return_date, null: false
      t.string :patron_name, null: false
      t.integer :book_id, null: false
    end
  end
end
