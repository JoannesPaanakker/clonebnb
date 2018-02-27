class SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource)
    @user = current_user
    boats_path
  end
end
