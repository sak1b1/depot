class CreateSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :series do |t|
      t.string :name
      t.integer :season
      t.integer :episode

      t.timestamps
    end
  end
end
