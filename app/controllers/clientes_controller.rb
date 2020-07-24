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
      flash[:success] = "Gracias Por Suscribirte #{@cliente.nombre.upcase}.!"
      redirect_to root_path
    else
      flash[:alert] = t('.alert')
      render :new
    end
  end

  private
  def cliente_params
    params.require(:cliente).permit(:nombre, :email, :telefono, :ciudad)
  end
end
