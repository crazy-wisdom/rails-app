class ApiController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  # include Configurable
  # before_action :authenticate_user!

  def action_missing(_m, *_args, &_block)
    head :ok
  end
end
