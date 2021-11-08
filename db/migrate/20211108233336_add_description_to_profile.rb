class AddDescriptionToProfile < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :description, :text, limit: 500
  end
end
