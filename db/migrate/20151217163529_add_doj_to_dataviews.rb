class AddDojToDataviews < ActiveRecord::Migration
  def change
  	add_column :dataviews, :doj, :datetime
  end
end
