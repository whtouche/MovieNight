class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :title, null: false
      t.text :location, null: false
      t.text :description
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
