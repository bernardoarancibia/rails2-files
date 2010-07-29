class CreateProductos < ActiveRecord::Migration
  def self.up
    create_table :productos do |t|
      t.integer :categoria_id, :null => false
      t.string :nombre, :limit => "50", :null => false
      t.integer :precio, :null => false 
      t.boolean :granel, :default => false, :null => false
      t.integer :stock, :null => false

      t.timestamps
    end

    add_index :productos, :categoria_id
  end

  def self.down
    drop_table :productos
  end
end
