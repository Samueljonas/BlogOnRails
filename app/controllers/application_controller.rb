class ApplicationController < ActionController::Base
  def after_sign_out_path_for(resource_or_scope)
    root_path # Alterar para a rota desejada
  end
end
