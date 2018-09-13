module ControllerMacros
    def login_customer
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        user = FactoryBot.create(:customer)
        sign_in user
      end
    end
  
    def login_driver
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        user = FactoryBot.create(:driver)
        sign_in user
      end
    end
  end