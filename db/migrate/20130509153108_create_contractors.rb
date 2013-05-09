class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.integer :category_id
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
    end
  end
end
