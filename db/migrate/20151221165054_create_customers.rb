class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.integer :contact_no
      t.string :token
      t.string :reset_digest
      t.datetime :reset_sent_at

      t.timestamps null: false
    end
  end
end
