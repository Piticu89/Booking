class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.text :day

      t.timestamps
    end
  end
end
