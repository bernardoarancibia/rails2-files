class AddAttachmentsFotoToProducto < ActiveRecord::Migration
  def self.up
    add_column :productos, :foto_file_name, :string
  end

  def self.down
    remove_column :productos, :foto_file_name
  end
end
