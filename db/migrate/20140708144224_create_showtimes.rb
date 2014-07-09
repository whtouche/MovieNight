class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.text :theater
      t.time :time
      t.date :date
      t.text :title
      t.text :description
      t.text :rating
      t.text :genre
    end
  end
end
