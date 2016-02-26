class Role < ActiveRecord::Base
	has_many :user_role
	has_many :user, :through => :user_role
end
