# == Schema Information
#
# Table name: current_loans
#
#  id                            :integer          not null, primary key
#  amount_borrowed               :integer
#  amount_remaining              :integer
#  apr                           :float
#  first_payment_date            :date
#  lender_name                   :string
#  loan_start_date               :date
#  loan_total_cost               :integer
#  monthly_payments_after_school :integer
#  monthly_payments_in_school    :integer
#  next_loan_receiving_amount    :integer
#  next_loan_receiving_date      :date
#  repayment_period              :integer
#  total_loan_amount             :integer
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  user_id                       :integer
#
class CurrentLoan < ApplicationRecord
  has_many(:loan_comparisons, { :class_name => "LoanComparison", :foreign_key => "user_id", :dependent => :destroy })
end
