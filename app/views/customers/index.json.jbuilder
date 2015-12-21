json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :email, :contact_no 
    json.url customer_url(customer, format: :json)
end
