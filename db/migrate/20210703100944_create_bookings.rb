class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :show, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :is_confirm, default: true
      t.string :seats
      t.integer :amount

      t.timestamps
    end
  end
end
