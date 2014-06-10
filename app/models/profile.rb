class Profile < ActiveRecord::Base
	belongs_to :user
  attr_accessible :address, :phone_number, :user_id
end
