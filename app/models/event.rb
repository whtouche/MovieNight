class Event < ActiveRecord::Base
  belongs_to :user
  has_many :rsvped_users, through: :rsvps, foreign_key: 'user_id'
end
