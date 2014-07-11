class Query
  # Needed if class doesn't inherit from ActiveRecord::Base
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end
  attr_accessor :zip, :date
end
