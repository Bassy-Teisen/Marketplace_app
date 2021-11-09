class AddExperienceToProfile < ActiveRecord::Migration[6.1]
  def change
    add_reference :profiles, :experience, null: false, foreign_key: true
  end
end
