class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :borrow_date
      t.date :return_date
      t.references :user, null: false, foreign_key: true
      t.references :artwork, null: false, foreign_key: true
      t.timestamps
    end
  end
end
