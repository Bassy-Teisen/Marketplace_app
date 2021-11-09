class AddBoatToProfile < ActiveRecord::Migration[6.1]
  def change
    add_reference :profiles, :boat, null: false, foreign_key: true
  end
end
