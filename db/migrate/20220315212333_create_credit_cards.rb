class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.integer :credit_line
      t.integer :current_balance
      t.string :card_name
      t.float :apr
      t.integer :user_id
      t.boolean :permanent_credit_card
      t.date :payment_date
      t.integer :minimum_payment

      t.timestamps
    end
  end
end
