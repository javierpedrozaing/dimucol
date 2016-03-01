class Plan < ActiveRecord::Base
	has_many :publicities
	belongs_to :profile
end
