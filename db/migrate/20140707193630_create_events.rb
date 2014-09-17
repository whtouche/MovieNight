class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true
      t.text :title, null: false
      t.text :theatre, null: false
      t.text :movie
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
