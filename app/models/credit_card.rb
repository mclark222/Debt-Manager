# == Schema Information
#
# Table name: credit_cards
#
#  id                    :integer          not null, primary key
#  apr                   :float
#  card_name             :string
#  credit_line           :integer
#  current_balance       :integer
#  minimum_payment       :integer
#  payment_date          :date
#  permanent_credit_card :boolean
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :integer
#
class CreditCard < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
