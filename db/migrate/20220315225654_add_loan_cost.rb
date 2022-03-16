class AddLoanCost < ActiveRecord::Migration[6.0]
  def change
    add_column :current_loans, :loan_total_cost, :integer
    add_column :loan_comparisons, :loan_total_cost, :integer
  end
end
