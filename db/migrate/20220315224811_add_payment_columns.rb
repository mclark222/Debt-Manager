class AddPaymentColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :current_loans, :monthly_payments_after_school, :integer
    add_column :current_loans, :monthly_payments_in_school, :integer
    add_column :loan_comparisons, :monthly_payments_after_school, :integer
    add_column :loan_comparisons, :monthly_payments_in_school, :integer
  end
end
