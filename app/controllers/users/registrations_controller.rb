class Users::RegistrationsController < Devise::RegistrationsController
  protected

  # Redireciona após atualizar
  def after_update_path_for(resource)
    user_path(resource)
  end
end
