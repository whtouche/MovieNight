class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  has_many :events, dependent: :destroy
  has_many :rsvps
end

