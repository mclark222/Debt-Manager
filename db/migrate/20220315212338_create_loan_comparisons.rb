class CreateLoanComparisons < ActiveRecord::Migration[6.0]
  def change
    create_table :loan_comparisons do |t|
      t.integer :user_id
      t.integer :total_loan_amount
      t.string :lender_name
      t.integer :repayment_period
      t.float :apr

      t.timestamps
    end
  end
end
