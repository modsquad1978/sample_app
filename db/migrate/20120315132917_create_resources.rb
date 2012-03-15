class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :email
      t.string :title
      t.string :home_addr
      t.string :city
      t.string :state
      t.integer :zip
      t.date :hired_date
      t.decimal :base_rate
      t.text :resume

      t.timestamps
    end
  end
end
