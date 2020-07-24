class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :configuraciones

  protected
  def configuraciones
    @imagenes = Imagen.all
  end

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
