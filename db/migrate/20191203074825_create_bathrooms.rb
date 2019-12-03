class CreateBathrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :bathrooms do |t|
      t.float :xcoord
      t.float :ycoord
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
