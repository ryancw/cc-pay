class Blert < ActiveRecord::Base
  attr_accessible :alerttype, :contact
  belongs_to :user
  validates :user_id, presence: true
end
