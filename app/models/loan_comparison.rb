# == Schema Information
#
# Table name: loan_comparisons
#
#  id                            :integer          not null, primary key
#  apr                           :float
#  lender_name                   :string
#  loan_total_cost               :integer
#  monthly_payments_after_school :integer
#  monthly_payments_in_school    :integer
#  repayment_period              :integer
#  total_loan_amount             :integer
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  user_id                       :integer
#
class LoanComparison < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
