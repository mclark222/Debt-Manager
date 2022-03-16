class CreateCurrentLoans < ActiveRecord::Migration[6.0]
  def change
    create_table :current_loans do |t|
      t.integer :total_loan_amount
      t.string :lender_name
      t.integer :repayment_period
      t.float :apr
      t.integer :user_id
      t.date :first_payment_date
      t.date :loan_start_date
      t.integer :amount_borrowed
      t.integer :amount_remaining
      t.date :next_loan_receiving_date
      t.integer :next_loan_receiving_amount

      t.timestamps
    end
  end
end
