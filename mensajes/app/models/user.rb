class User < ActiveRecord::Base
  has_many :notes, :dependent => :destroy
  validates_uniqueness_of :name, :case_sensitive => false
  validates_presence_of :name
end
