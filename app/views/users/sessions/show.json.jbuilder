if user_signed_in?
    json.user do
      json.(current_user, :id, :email, :role, :phone, :address, :last_location)
    end
  end