class CreateHomeowners < ActiveRecord::Migration
  def change
    create_table :homeowners do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
    end
  end
end
