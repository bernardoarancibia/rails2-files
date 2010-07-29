class RemoveDbIndexToComments < ActiveRecord::Migration
  def self.up
    remove_index :comments, :post_id
  end

  def self.down
  end
end
