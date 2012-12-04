class AddLocationAndLanguageIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :location_id, :integer
  	add_column :users, :language_id, :integer
  end
end
