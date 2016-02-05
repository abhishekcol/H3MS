class Task < ActiveRecord::Base
  has_many :taskpriorities
  has_many :complexitylevels
  has_many :genders, foreign_key: "gender_id"
  
end
