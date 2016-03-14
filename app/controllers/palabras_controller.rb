class PalabrasController < ApplicationController
  before_action :set_palabra, only: [:show, :update, :destroy]
  include ActionController::MimeResponds


  def index
    @palabras = Palabra.all
     render json: @palabras
  end

  def show
    render json: @palabra
  end

  def create
    @palabra = Palabra.new(palabra_params)

    if @palabra.save
      render json: @palabra, status: :created, location: @palabra
    else
      render json: @palabra.errors, status: :unprocessable_entity
    end
  end

  def update
    @palabra = Palabra.find(params[:id])

    if @palabra.update(palabra_params)
      head :no_content
    else
      render json: @palabra.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @palabra.destroy

    head :no_content
  end

  private

    def set_palabra
      @palabra = Palabra.find(params[:id])
    end

    def palabra_params
      params.require(:palabra).permit(:nombre, :descripcion)
    end
end
