# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user! # Garante que o usuário está autenticado
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authorize_admin, except: %i[index show]

  # Lista todos os usuários (apenas para admins)
  def index
    @users = User.all
  end

  # Mostra um único usuário
  def show; end

  # Exibe o formulário de edição do usuário
  def edit; end

  # Atualiza os dados do usuário
  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User updated!"
    else
      render :edit
    end
  end

  # Exclui um usuário
  def destroy
    @user.destroy
    redirect_to users_path, notice: "User excluded!"
  end

  private

  # Define o usuário com base no ID passado na URL
  def set_user
    return unless params[:id].present? && params[:id] =~ /^\d+$/

    @user = User.find(params[:id])
  end

  # Permite apenas os parâmetros especificados para segurança
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end

  # Apenas administradores podem acessar certas ações
  def authorize_admin
    redirect_to root_path, alert: "Unauthorized access!" unless current_user.admin?
  end
end
