class ApplicationController < ActionController::Base  
  before_action :set_locale
  before_action :authenticate_user!
  def set_locale
    session[:locale] = params[:locale] || session[:locale] || I18n.default_locale
    I18n.locale = session[:locale]
  end
end
