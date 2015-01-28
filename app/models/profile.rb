class Profile < ActiveRecord::Base
  belongs_to :user
  has_one :resumelink
  has_many :resumes
end
