require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "return succeed http status" do
      get "/api/users/sign_in"
      expect(response).to have_http_status(200)
    end
    it "return succeed http status" do
        get "/api/users/sign_up"
        expect(response).to have_http_status(200)
    end
    it "return succeed http status" do
        get "/api/users/current"
        expect(response).to have_http_status(200)
    end    
  end

  describe "POST /users" do
      it "return succeed http status" do
        post "/api/users/sign_in", :params => {:user => {:email => "a@a.com",
          :password =>"password", :role => "customer"}}
        expect(response).to have_http_status(401)
      end

      it "is valid with token in response body" do
        user = FactoryBot.create(:user)
        login_as(user)
        post "/api/users/sign_in"
        expect(response.body).to include("token")
      end
  end

  describe "Signs user in and out" do
    it "signs user in" do
      user = FactoryBot.build(:user)      
      sign_in user
      get "/api/users/sign_in"
      expect(controller.current_user).to eq(user)
    end

    it "signs user out" do
      user = FactoryBot.build(:user)
      sign_out user
      delete "/api/users/sign_out"
      expect(controller.current_user).to be_nil
    end
  end
  
end
