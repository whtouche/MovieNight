class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true
      t.text :title, null: false
      t.text :theatre, null: false
      t.text :movie
      t.text :event_description #remove event_
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
#.string would be fine
#.text = for longer....things
