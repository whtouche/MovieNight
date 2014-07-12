class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  has_and_belongs_to_many :events, dependent: :destroy

end
