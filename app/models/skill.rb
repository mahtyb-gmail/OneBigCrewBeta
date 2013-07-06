class Skill < ActiveRecord::Base
  attr_accessible :name
  has_many :bios
  has_many :users, :through => :bios
end
