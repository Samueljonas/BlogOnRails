# frozen_string_literal: true
module Users
  class RegistrationsController < Devise::RegistrationsController
  protected

  # Redireciona após atualizar
  def after_update_path_for(_resource)
    root_path
  end
end
end


