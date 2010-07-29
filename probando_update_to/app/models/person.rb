class Person < ActiveRecord::Base
  validates_presence_of :name, :age
  validates_uniqueness_of :name
end
