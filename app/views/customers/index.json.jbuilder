json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :email, :password_hash, :password_salt, :contact_no, :token, :reset_digest, :reset_sent_at
  json.url customer_url(customer, format: :json)
end
