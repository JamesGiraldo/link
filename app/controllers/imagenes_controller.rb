class ImagenesController < ApplicationController
  before_action :set_imagen, only: [:edit, :update, :destroy]

  def index
    @imagenes = Imagen.all
  end

  def new
    @imagen = Imagen.new
  end

  def edit
  end

  def create
    @imagen = Imagen.new(imagen_params)
    if @imagen.save
      flash[:success] = t("imagen.created")
      redirect_to '/'
    else
      flash[:alert] = t("imagen.errores")
      render :new
    end
  end

  def update
    if @imagen.update(imagen_params)
      flash[:success] = t("imagen.updated")
      redirect_to '/'
    else
      flash[:alert] = t("imagen.errores")
      redirect_to '/'
    end
  end

  def destroy
    if @imagen.destroy
      flash[:alert] = t("imagen.deleted")
      redirect_to '/'
    else
      flash[:alert] = t("imagen.errores")
      redirect_to '/'
    end
  end

  private

  def set_imagen
    begin
      @imagen = Imagen.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = t("imagen.noencontrada")
      redirect_to '/'
    end
  end

  def imagen_params
    params.require(:imagen).permit(:title, :description, :avatar)
  end

end
