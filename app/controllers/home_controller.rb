class HomeController < ApplicationController

  def index
  end

  def informacion
  end

  def servicios
  end

  def search
    @clientes = Cliente.where("nombre LIKE :query", query: "%#{params[:find]}%")
  end

end
