class CreateRsvpJoinTable < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.references :event
      t.references :user
      t.boolean :is_admin
    end
  end
end
