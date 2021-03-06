class Project < ActiveRecord::Base
  attr_accessible :details, :hometown, :length, :name, :project_type, :schedule_info, :startdate, :user_id, :skill_ids
  validates :name, presence: true
  
  belongs_to :user
  has_many :reqs
  has_many :skills, :through => :reqs
  
end
