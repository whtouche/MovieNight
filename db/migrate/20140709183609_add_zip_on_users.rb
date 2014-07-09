class AddZipOnUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.text :zip
    end
  end
end
