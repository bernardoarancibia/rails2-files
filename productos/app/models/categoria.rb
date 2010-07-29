class Categoria < ActiveRecord::Base
  has_many :productos #, :dependent => :destroy 

  validates_presence_of :nombre 
  validates_length_of :nombre, :maximum => 50
  validates_uniqueness_of :nombre
end
