class CreateVendedores < ActiveRecord::Migration
  def self.up
    create_table :vendedores do |t|

      t.integer :rut, :null => false
      t.string :dv, :limit => 1, :null => false
      t.string :password, :limit => 30, :null => false
      t.boolean :administrador, :default => false
      t.string :nombre, :limit => 30
      t.string :apellidos, :limit => 30
      t.integer :cod_fono
      t.integer :num_fono
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :vendedores
  end
end
