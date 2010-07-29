class AddNullPeople < ActiveRecord::Migration
  def self.up
    change_table :people do |t|
      t.change :name, :string, :limit => 50, :null => false
      t.change :age, :integer, :limit => 1, :null => false
    end
  end

  def self.down
  end
end
