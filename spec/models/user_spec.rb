require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
  	expect(FactoryBot.build(:user)).to be_valid
  end

  it "it valid with an email and password" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it "is not valid without an email" do
    user1 = FactoryBot.build(:user, email: nil)
    expect(user1).to_not be_valid
  end
 
  it "is not valid without a password" do
    user1 = FactoryBot.build(:user, password: nil)
    expect(user1).to_not be_valid
  end



  it "is invalid with a duplicate email" do
    user1 = FactoryBot.create(:user, email: "blabla@gmail.com")
    user2 = FactoryBot.build(:user, email: "blabla@gmail.com")
    user2.valid?
    expect(user2.errors[:email]).to include("has already been taken")
  end
end
