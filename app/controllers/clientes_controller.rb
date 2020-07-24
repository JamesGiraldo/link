class ClientesController < ApplicationController
  respond_to :html

  def index
    @clientes = Cliente.all
  end

  def new
    @cliente = Cliente.new
  end

  def show
  end

  def create
    @cliente = Cliente.new(cliente_params)
    if @cliente.save
      flash[:success] = t("cliente.created")
      redirect_to '/'
    else
      flash[:alert] = t("cliente.errores")
      redirect_to '/'
    end
  end

  private
  def cliente_params
    params.require(:cliente).permit(:nombre, :email, :telefono, :ciudad)
  end
end
