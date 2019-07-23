class CreatePaymentMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_methods do |t|
      t.references :user, foreign_key: true
      t.string :type
      t.string :payment_details

      t.timestamps
    end
  end
end
