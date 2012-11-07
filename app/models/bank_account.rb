class BankAccount < ActiveRecord::Base
  attr_accessible :checking, :routing, :bankname, :nickname

  belongs_to :user
end
