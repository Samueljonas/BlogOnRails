class Users::RegistrationsController < Devise::RegistrationsController
  protected

  # Redireciona após atualizar
  def after_update_path_for(resource)
    root_path
  end
end
