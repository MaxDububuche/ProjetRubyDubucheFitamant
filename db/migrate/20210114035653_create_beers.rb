class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :rating
      t.integer :price
      t.string :type
      t.string :producer

      t.timestamps
    end
  end
end
