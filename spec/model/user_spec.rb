require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a nickname" do
      user = User.new(nickname: "", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000")
      # user = build(:user, nickname: "")
     user.valid?
     expect(user.errors[:nickname]).to include("can't be blank")
    end

    #   it "is invalid without a email" do
    #     user = build(:user, nickname: "")
    #   # user = User.new(nickname: "keisuke", email: "", password: "00000000", password_confirmation: "00000000")
    #  user.valid?
    #  expect(user.errors[:email]).to include("can't be blank")
    #   end

  end
end
