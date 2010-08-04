#encoding : utf-8
class CategoriasController < ApplicationController
  before_filter :find_categoria, :only => [:edit, :update, :destroy]

  def index
    @title = "Listado de Categorías"
    @categorias = Categoria.find(:all, :order => "nombre ASC")

    respond_to do |format|
      format.html {render :index}
      format.xml  {render :xml => @categorias}
    end
  end

  def new
    @title = "Nueva Categoría"
    @categoria = Categoria.new
  end

  def create
    @categoria = Categoria.new(params[:categoria])
    if @categoria.save
      redirect_to categorias_path, :notice => "La categoría se creó correctamente"
    else
      render "new"
    end
  end

  def edit
    @title = "Editando Categoría"
  end

  def update

    if @categoria.update_attributes(params[:categoria])
      redirect_to categorias_path, :notice => "La categoría se actualizó correctamente"
    else
      render "edit"
    end
  end

  def destroy
    @categoria.destroy

    redirect_to categorias_path, :notice => "La categoría se eliminó correctamente"
  end

  protected #--------------------------------

  def find_categoria
    @categoria = Categoria.find_by_id(params[:id])
  end
end
