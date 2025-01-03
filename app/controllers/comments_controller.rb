class CommentsController < ApplicationController
  before_action :set_post

  def create
    # Constrói o comentário associado ao post
    @comment = @post.Comments.build(comment_params)

    # Associa o comentário ao usuário logado, se houver
    @comment.user = current_user if user_signed_in?
    @comment.author = "Anonymous" if @comment.author.blank?

    # Salva o comentário
    if @comment.save
      redirect_to @post, notice: "Comentário publicado com sucesso!"
    else
      redirect_to @post, alert: "Erro ao publicar o comentário. Tente novamente."
    end
  end

  private

  # Busca o post pelo ID enviado na rota
  def set_post
    @post = Post.find(params[:post_id])
  end

  # Permite apenas os campos necessários
  def comment_params
    params.require(:comment).permit(:body, :author)
  end
end
