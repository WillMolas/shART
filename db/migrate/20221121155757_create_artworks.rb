class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :artist
      t.string :location
      t.float :measurements
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
