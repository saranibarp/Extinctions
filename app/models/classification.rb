class Classification < ActiveRecord::Base
  has_many :animals

  def all_animals
    self.animals.order(extinction_date: :desc, name: :asc)
  end

  def to_param  # overridden
    [id, name.parameterize].join("-")
  end
end