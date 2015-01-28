class Registration < ActiveRecord::Base
  validates_formatting_of :email, using: :email
  validates_formatting_of :resumelink, using: :url
end
