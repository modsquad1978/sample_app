class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :work_phone
      t.string :mobile_phone
      t.string :company
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :linkedin
      t.string :facebook

      t.timestamps
    end
  end
    
  def self.down
    drop_table :contacts
  end
end
