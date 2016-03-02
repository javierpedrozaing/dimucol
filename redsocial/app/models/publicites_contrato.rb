class PublicitesContrato < ActiveRecord::Base
	belongs_to :publicities
	belongs_to :user
end
