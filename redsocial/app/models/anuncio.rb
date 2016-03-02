class Anuncio < ActiveRecord::Base
	belongs_to :user, foreign_key: "user_id"
	balongs_to :ubication_anuncio
end
