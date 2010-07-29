class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name, :limit => 50, :null => false
      t.integer    :age, :limit => 2
    end
    User.create :name => 'Bernardo', :age => 23
  end

  def self.down
  end
end
