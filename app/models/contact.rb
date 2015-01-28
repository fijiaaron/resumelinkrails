class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :addresses
  has_many :telephones
  has_many :emails
end
