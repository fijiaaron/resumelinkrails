class Resumelink < ActiveRecord::Base
  belongs_to :user
  belongs_to :profile
  validates_formatting_of :resumelink, using: :url
end
