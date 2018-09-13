require "rails_helper"

RSpec.describe Users::SessionsController, :type => :controller do
    
    login_customer

    it "should have login_customer" do
        # note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
        expect(subject.current_user).to_not eq(nil)
    end
    it "routes /api/users/sign_in to users/sessions#index" do
        expect(post: "/api/users/sign_in").to route_to(
          format: :json,
          controller: "users/sessions",
          action: "create"
        )
    end
       
    
end
