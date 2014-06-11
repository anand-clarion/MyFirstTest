class AddskypeIdTousers < ActiveRecord::Migration
  def up
  	add_column :users, :skype_id, :text
  	add_column :users, :name, :text
  end

  def down
  	remove_column :users, :name
  end
end
