class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name, :limit => 50
      t.integer :age, :limit => 1
      t.date :born

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
