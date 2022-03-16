# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  graduation_date :date
#  last_name       :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
  has_many(:current_loans, { :class_name => "CurrentLoan", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:credit_cards, { :class_name => "CreditCard", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:loan_comparisons, { :class_name => "LoanComparison", :foreign_key => "user_id", :dependent => :destroy })
end
