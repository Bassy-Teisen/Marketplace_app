class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :type
      t.string :size
      t.integer :capasity
      t.string :activity

      t.timestamps
    end
  end
end
