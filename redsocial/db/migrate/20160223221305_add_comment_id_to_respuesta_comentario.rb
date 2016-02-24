class AddCommentIdToRespuestaComentario < ActiveRecord::Migration
  def change
    add_column :respuesta_comentarios, :comment_id, :integer
  end
end
