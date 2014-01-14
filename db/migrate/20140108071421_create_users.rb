class CreateUsers < ActiveRecord::Migration
  def up

    create_table :users do |t|
      t.string :username
      t.string :role

      t.timestamps
    end
  end
 
  def down
      
  end	
end


