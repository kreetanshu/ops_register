class CreateNegativeFeedbacks < ActiveRecord::Migration
  def change
    create_table :negative_feedbacks do |t|
      t.date :date
      t.string :cook
      t.string :customer
      t.text :feedback
      t.text :remark
      t.integer :spid
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
