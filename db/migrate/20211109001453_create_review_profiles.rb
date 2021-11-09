class CreateReviewProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :review_profiles do |t|
      t.integer :totalled_rating
      t.integer :rating_out_of_five, limit: 1
      t.text :description, limit: 500
      t.integer :number_of_voyages

      t.timestamps
    end
  end
end
