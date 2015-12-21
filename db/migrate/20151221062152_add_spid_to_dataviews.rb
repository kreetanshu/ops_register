class AddSpidToDataviews < ActiveRecord::Migration
  def change
  	add_column :dataviews, :spid, :integer
  end
end
