class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.text :experience_description, limit: 500
      t.string :boat_type
      t.string :interested_in

      t.timestamps
    end
  end
end
