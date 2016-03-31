class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps null: false
    end

    add_index :customers, :name
    add_index :customers, :phone, unique: true
    add_index :customers, :email, unique: true
  end
end
