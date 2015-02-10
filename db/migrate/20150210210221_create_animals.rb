class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.references :classification, index: true
      t.string :name
      t.string :range
      t.string :url
      t.string :image_url
      t.integer :extinction_date
      t.timestamps null: false
    end
  end
end
