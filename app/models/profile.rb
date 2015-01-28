class Profile < ActiveRecord::Base
  belongs_to :user
  has_one :resumelink
  has_many :resumes
  has_many :addresses
  has_many :emails
end
