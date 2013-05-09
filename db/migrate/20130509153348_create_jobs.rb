class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :category_id
      t.integer :homeowner_id
      t.integer :contractor_id
      t.string :description
      t.date :appointment_date
      t.string :status
      t.string :address
    end
  end
end
