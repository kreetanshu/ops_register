json.array!(@sproviders) do |sprovider|
  json.extract! sprovider, :id, :uname, :doj, :contact_no, :status, :payment, :credit, :date
  json.url sprovider_url(sprovider, format: :json)
end
