class Users::Customer::OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # GET /orders
  # GET /orders.json
  def index
    orders = current_user.orders
    render json: orders
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    render json: @order
  end
  
  # GET /orders/ongoing
  def ongoing_order
    @order= Order.where(customer_id: current_user.id).where(status: Order.statuses[:ongoing]).take!
    render json: @order
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.customer_id = current_user.id
    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    if @order.update(order_params)
      render :show, status: :ok, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order)
            .permit!
    end
end
