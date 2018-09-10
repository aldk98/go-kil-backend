require 'rails_helper'

RSpec.describe Driver, type: :model do
    it "has a valid factory" do
        expect(FactoryBot.build(:driver)).to be_valid
    end
  
    it "it valid with an email and password" do
      expect(FactoryBot.build(:driver)).to be_valid
    end
  
    it "is not valid without an email" do
      user1 = FactoryBot.build(:driver, email: nil)
      expect(user1).to_not be_valid
    end
  
    it "is not valid without a password" do
      user1 = FactoryBot.build(:driver, password: nil)
      expect(user1).to_not be_valid
    end
  
    it "is invalid with a duplicate email" do
      user1 = FactoryBot.create(:driver, email: "blabla@gmail.com")
      user2 = FactoryBot.build(:driver, email: "blabla@gmail.com")
      user2.valid?
      expect(user2.errors[:email]).to include("has already been taken")
    end
   
end
