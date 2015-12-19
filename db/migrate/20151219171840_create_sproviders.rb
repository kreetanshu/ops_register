class CreateSproviders < ActiveRecord::Migration
  def change
    create_table :sproviders do |t|
      t.string :uname
      t.datetime :doj
      t.integer :contact_no
      t.string :status
      t.integer :payment
      t.integer :credit
      t.datetime :date

      t.timestamps null: false
    end
  end
end
