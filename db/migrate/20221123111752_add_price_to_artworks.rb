class AddPriceToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :price, :text
  end
end
