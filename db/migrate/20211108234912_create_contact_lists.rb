class CreateContactLists < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_lists do |t|
      t.integer :phone_number
      t.string :email
      t.string :social

      t.timestamps
    end
  end
end
