class ChangeTypeToTypere < ActiveRecord::Migration
  def change
  	rename_column :dataviews, :type, :typere
  	#rename_column :service_requests, :service_provider, :service_provider_name
  end
end
