require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a nickname,email, password, password_confirmation" do
      user = build(:user)
      user.valid?
      expect(user).to be_valid    
   end
 end
 