class CreateMigrations < ActiveRecord::Migration
  def change

    create_table :migrations do |t|

      t.datetime :departure_at
      t.datetime :arrival_at

      t.string :from_pond
      t.string :from_pond_latitude
      t.string :from_pond_longitude

      t.string :to_pond
      t.string :to_pond_latitude
      t.string :to_pond_longitude

      t.timestamps
    end

  end
end
