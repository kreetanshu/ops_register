class CreateDataviews < ActiveRecord::Migration
  def change
    create_table :dataviews do |t|
      t.string :cook
      t.integer :customer_id
      t.string :customer_name
      t.text :address
      t.datetime :starttime
      t.datetime :endtime
      t.datetime :totaltime
      t.integer :money
      t.string :paidbycustomer
      t.string :paidbycook

      t.timestamps null: false
    end
  end
end
