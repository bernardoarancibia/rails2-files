class CreateVendedors < ActiveRecord::Migration
  def self.up
    create_table :vendedors do |t|

      t.integer :rut, :null => false
      t.char :dv, :limit => 1, :null => false
      t.string :password, :limit => 30, :null => false
      t.boolean :administrador, :default => false, :null => false
      t.string :nombre, :limit => 30
      t.string :apellidos, :limit => 30
      t.integer :cod_fono, :limit => 1
      t.integer :num_fono
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :vendedors
  end
end
