require 'rails_helper'

RSpec.describe Order, type: :model do
  it "expect an order to be locateable " do
    order=FactoryBot.build(:order)
    point_a = GoogleGeocoder.geocode order.start_location['formatted_address']
    point_b = GoogleGeocoder.geocode order.end_location['formatted_address']
    distance=point_a.distance_to(point_b)
    expect(point_a.distance_to(point_b)).to eq(distance)
  end
  it "must be valid" do
    expect(FactoryBot.build(:order)).to be_valid
  end

  it "must be invalid without customer" do
    expect(FactoryBot.build(:order_without_customer)).to be_invalid
  end

  it "must be invalid without status" do
    order = FactoryBot.build(:order)
    order.status = nil
    expect(order).to be_invalid
  end

  it "must be invalid with fare less than 0" do
    order = FactoryBot.build(:order)
    order.fare = 0
    expect(order).to be_invalid
  end

  it "must be invalid without start_location or/and end_location" do
    order = FactoryBot.build(:order)
    order.start_location = {}
    expect(order).to be_invalid
  end
end
