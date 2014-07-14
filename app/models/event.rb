class Event < ActiveRecord::Base
  belongs_to :user
  has_many :rsvped_users, through: :rsvps, :source => :user
  has_many :rsvps
end
