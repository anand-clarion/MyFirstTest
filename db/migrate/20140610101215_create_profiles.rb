class CreateProfiles < ActiveRecord::Migration
  def change
  	create_table :profiles do |t|
    	t.belongs_to :user
      t.string :address
      t.string :phone_number
      t.timestamps
    end
  end
end
