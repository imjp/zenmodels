class RemoveNameFromProfiles < ActiveRecord::Migration
  def up 
		remove_column :profiles, :name		
		add_column :profiles, :user_id, :integer
		add_index :profiles, :user_id
  end
end
