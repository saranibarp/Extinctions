class Classification < ActiveRecord::Base
  has_many :animals

  def all_animals
    self.animals.order(extinction_date: :desc, name: :asc)
  end
end