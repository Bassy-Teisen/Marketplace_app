class AddReviewProfileToProfile < ActiveRecord::Migration[6.1]
  def change
    add_reference :profiles, :review_profile, null: false, foreign_key: true
  end
end
