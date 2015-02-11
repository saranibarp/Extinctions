class Animal < ActiveRecord::Base
  belongs_to :classification
  has_many :common_names

  def recent?
    return true if extinction_date > 1900
  end

  def to_param  # overridden
    [id, name.parameterize].join("-")
  end
end
