class Comment < ActiveRecord::Base
	belongs_to :publication, foreign_key: 'publication_id'
	has_many :respuestaComentario
end
