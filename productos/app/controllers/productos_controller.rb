#encoding: utf-8

class ProductosController < ApplicationController
  before_filter :find_categorias, :only => ["new", "edit"]

  def index
    @title = "Listado de Productos"
    @productos = Producto.find(:all, :order => "nombre ASC")

    respond_to do |format|
      format.html {render :index}
      format.xml  {render :xml => @productos}
    end
  end

  def list
    @title = "Listado de Productos"
    @categoria = Categoria.find_by_id(params[:id])
    @productos = @categoria.productos
    render "index"
  end

  def new
    @title = "Nuevo Producto"
    @producto = Producto.new
  end

  def create
    @producto = Producto.new(params[:producto])

    if @producto.save
      redirect_to productos_path, :notice => "El producto se creó correctamente"
    else
      render "new"
    end
  end

  def edit
    @title = "Editando Producto"
    @producto = Producto.find_by_id(params[:id])
  end

  def update
    @producto = Producto.find_by_id(params[:id])

    if @producto.update_attributes(params[:producto])
      redirect_to productos_path, :notice => "El producto se actualizó de forma correcta"
    else
      render "new"
    end
  end

  def destroy
    @producto = Producto.find_by_id(params[:id])
    @producto.destroy
    redirect_to productos_path, :notice => "El producto ha sido eliminado correctamente"
  end

  def buscar
    @producto = Producto.find_by_nombre(params[:buscar])
  end

  protected #----------------

  def find_categorias
    @categorias = Categoria.all
  end
end
