class Producto < ActiveRecord::Base
  belongs_to :categoria

  has_attached_file :foto, :styles => {:small => "150x150>"},
                           :url => "productos/:id.:extension",
                           :path => ":rails_root/public/images/productos/:id.:extension"

  #validates_attachment_content_type :foto, :content_type => ["image/png", "image/jpg"]

  validates_associated :categoria
  validates_presence_of :nombre, :precio, :categoria, :stock
  validates_uniqueness_of :nombre
  validates_length_of :nombre, :within => 0..50
end
