# require 'rails_helper'


# RSpec.describe Users::Customer::OrdersController, type: :controller do
#   describe "GET #index" do
#     it "returns a success response" do
#       get :index
#       expect(response).to be_successful
#     end
#   end

#   describe "GET #show" do
#     it "returns a success response" do
#       order = Order.create! valid_attributes
#       get :show, params: {id: order.to_param}, session: valid_session
#       expect(response).to be_successful
#     end
#   end

#   describe "POST #create" do
#     context "with valid params" do
#       it "creates a new Order" do
#         expect {
#           post :create, params: {customers_order: valid_attributes}, session: valid_session
#         }.to change(Order, :count).by(1)
#       end

#       it "renders a JSON response with the new customers_order" do

#         post :create, params: {customers_order: valid_attributes}, session: valid_session
#         expect(response).to have_http_status(:created)
#         expect(response.content_type).to eq('application/json')
#         expect(response.location).to eq(customers_order_url(Order.last))
#       end
#     end

#     context "with invalid params" do
#       it "renders a JSON response with errors for the new customers_order" do

#         post :create, params: {customers_order: invalid_attributes}, session: valid_session
#         expect(response).to have_http_status(:unprocessable_entity)
#         expect(response.content_type).to eq('application/json')
#       end
#     end
#   end

#   describe "PUT #update" do
#     context "with valid params" do
#       let(:new_attributes) {
#         skip("Add a hash of attributes valid for your model")
#       }

#       it "updates the requested customers_order" do
#         order = Order.create! valid_attributes
#         put :update, params: {id: order.to_param, customers_order: new_attributes}, session: valid_session
#         order.reload
#         skip("Add assertions for updated state")
#       end

#       it "renders a JSON response with the customers_order" do
#         order = Order.create! valid_attributes

#         put :update, params: {id: order.to_param, customers_order: valid_attributes}, session: valid_session
#         expect(response).to have_http_status(:ok)
#         expect(response.content_type).to eq('application/json')
#       end
#     end

#     context "with invalid params" do
#       it "renders a JSON response with errors for the customers_order" do
#         order = Order.create! valid_attributes

#         put :update, params: {id: order.to_param, customers_order: invalid_attributes}, session: valid_session
#         expect(response).to have_http_status(:unprocessable_entity)
#         expect(response.content_type).to eq('application/json')
#       end
#     end
#   end

#   describe "DELETE #destroy" do
#     it "destroys the requested customers_order" do
#       order = Order.create! valid_attributes
#       expect {
#         delete :destroy, params: {id: order.to_param}, session: valid_session
#       }.to change(Order, :count).by(-1)
#     end
#   end

# end
