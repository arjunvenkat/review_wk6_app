class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :job_id
      t.integer :contractor_id
      t.float :price
    end
  end
end
