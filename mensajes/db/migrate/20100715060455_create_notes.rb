class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.integer :user_id, :null => false
      t.string :title, :limit => 255
      t.text :body
      t.timestamps
    end
  end

  def self.down
  end
end
