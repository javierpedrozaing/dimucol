class SectionsPublicity < ActiveRecord::Base
	belongs_to :publicity
	belongs_to :section
end
