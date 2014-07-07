class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.integer :theaterid
      t.text :streetaddress
      t.text :city
      t.text :state
      t.text :zipcode
      t.text :phone_number

    end
  end
end
