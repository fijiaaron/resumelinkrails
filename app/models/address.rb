class Address < ActiveRecord::Base
  belongs_to :profile
  belongs_to :contact
  belongs_to :user
end
