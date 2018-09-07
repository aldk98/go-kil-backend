if customer_signed_in?
    json.customer do
      json.(current_customer, :id, :email)
    end
end