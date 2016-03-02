class Section < ActiveRecord::Base
	has_many :sections_publicity
	has_many :publicities :through => :sections_publicity
end
