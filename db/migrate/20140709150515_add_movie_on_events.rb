class AddMovieOnEvents < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.text :movie
    end
  end
end
