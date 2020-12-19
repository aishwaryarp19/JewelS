json.extract! customer, :id, :Customer_Name, :Customer_address, :Contact_Number, :Product_Name, :Price, :created_at, :updated_at
json.url customer_url(customer, format: :json)
