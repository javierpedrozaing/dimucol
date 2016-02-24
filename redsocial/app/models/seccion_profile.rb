class SeccionProfile < ActiveRecord::Base
	belongs_to :section
	belongs_to :profile
end
