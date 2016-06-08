require "rails_helper"

RSpec.describe User, type: :model do
  let(:user) {FactoryGirl.create :user}
  let(:admin) {FactoryGirl.create :admin}

  describe "Associations" do

    it "should has_many comments" do
      t = User.reflect_on_association(:comments)
      t.macro.should eq :has_many
    end

    it "should has_many replies" do
      t = User.reflect_on_association(:replies)
      t.macro.should eq :has_many
    end

    it "should has_many bets" do
      t = User.reflect_on_association(:bets)
      t.macro.should eq :has_many
    end
  end

  describe "when send_mail after_save" do
    it {is_expected.to callback(:send_email).after :save}
  end
end
