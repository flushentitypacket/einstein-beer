class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.text :name
      t.text :data

      t.timestamps
    end
  end
end
