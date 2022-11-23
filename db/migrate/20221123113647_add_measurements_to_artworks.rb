class AddMeasurementsToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :measurements, :text
  end
end
