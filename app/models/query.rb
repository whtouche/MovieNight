class Query
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end
  attr_accessor :zip
end
