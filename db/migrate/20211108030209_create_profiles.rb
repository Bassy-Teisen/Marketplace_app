class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.integer :rating
      t.boolean :owner

      t.timestamps
    end
  end
end
