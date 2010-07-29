class CreateCategorias < ActiveRecord::Migration
  def self.up
    create_table :categorias do |t|
      t.string :nombre, :limit => 50, :null => false
    end
  end

  def self.down
    drop_table :categorias
  end
end
