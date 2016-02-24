class RespuestaComentario < ActiveRecord::Base
	belongs_to :comentario, foreign_key: 'comment_id'
end
