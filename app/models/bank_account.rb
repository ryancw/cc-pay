class BankAccount < ActiveRecord::Base
  attr_accessible :checking, :routing, :bankname, :nickname

  belongs_to :user

  validates :user_id, presence: true
end
