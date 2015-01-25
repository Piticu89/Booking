class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.time :start
      t.time :end
      t.text :comentariu
      t.references :day, index: true

      t.timestamps null: false
    end
    add_index :bookings, [:day_id, :created_at]
  end
end
