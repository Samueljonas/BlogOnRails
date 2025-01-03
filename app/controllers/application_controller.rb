class ApplicationController < ActionController::Base
  def after_sign_out_path_for(resource_or_scope)
    root_path # ou qualquer outra rota que você desejar
  end
end
