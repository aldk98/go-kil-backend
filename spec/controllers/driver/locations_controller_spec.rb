require 'rails_helper'


RSpec.describe Users::Customer::OrdersController, type: :controller do
    login_driver
  
  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested customers_order" do
        order = Order.create! valid_attributes
        put :update, params: {id: order.to_param, customers_order: new_attributes}, session: valid_session
        order.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the customers_order" do
        order = Order.create! valid_attributes

        put :update, params: {id: order.to_param, customers_order: valid_attributes}, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context "with invalid params" do
      it "renders a JSON response with errors for the customers_order" do
        order = Order.create! valid_attributes

        put :update, params: {id: order.to_param, customers_order: invalid_attributes}, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested customers_order" do
      order = Order.create! valid_attributes
      expect {
        delete :destroy, params: {id: order.to_param}, session: valid_session
      }.to change(Order, :count).by(-1)
    end
  end

end
