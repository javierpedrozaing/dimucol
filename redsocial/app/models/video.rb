class Video < ActiveRecord::Base
	belongs_to :publicity, foreign_key: 'publicity_id'
end
