class AddTypeToDataview < ActiveRecord::Migration
  def change
  	add_column :dataviews, :type, :string
  end
end
