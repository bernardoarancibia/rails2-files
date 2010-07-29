class Producto < ActiveRecord::Base
  belongs_to :categoria

  validates_associated :categoria
  validates_presence_of :nombre, :precio, :categoria, :stock
  validates_uniqueness_of :nombre
  validates_length_of :nombre, :within => 0..50
end
