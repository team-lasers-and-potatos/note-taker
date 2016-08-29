class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  respond_to :html, :json
  before_action :configure_permitted_parameters, if: :devise_controller?

  def index
    render json: {status: 200, message: 'API is up and running.', name: 'Joseph Gefroh'}
  end

  def notes
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end
end
