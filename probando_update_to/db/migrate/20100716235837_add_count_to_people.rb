class AddCountToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :count, :serial, :limit => 1, :null => false
  end

  def self.down
  end
end
