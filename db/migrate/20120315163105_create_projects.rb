class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_number
      t.string :site
      t.string :project_name
      t.string :requestor
      t.string :customer
      t.string :status
      t.string :department
      t.string :asset_number
      t.string :type
      t.string :model
      t.string :serial_number
      t.string :manufacturer
      t.string :room_num
      t.string :doc_num
      t.string :doc_title
      t.string :application
      t.string :verion
      t.string :vendor
      t.date :due_date
      t.date :revalidation
      t.string :assigned_to
      t.date :assigned_on

      t.timestamps
    end
  end
end
