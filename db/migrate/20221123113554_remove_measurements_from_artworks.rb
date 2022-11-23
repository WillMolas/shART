class RemoveMeasurementsFromArtworks < ActiveRecord::Migration[7.0]
  def change
    remove_column :artworks, :measurements, :float
  end
end
