class Bio < ActiveRecord::Base
  attr_accessible :skill_id, :user_id
  belongs_to :profile
  belongs_to :skill
end
