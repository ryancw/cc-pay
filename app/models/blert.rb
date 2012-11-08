class Blert < ActiveRecord::Base
  attr_accessible :alerttype, :contact
  belongs_to :user
  validates :user_id, presence: true

  TYPE = ['Payment date approaching', 'Payment date overdue', 'Added new credit card']
  CONTACT = ['test123@test.com', '123-456-7897']
end
