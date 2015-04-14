require "rails_helper"

describe User  do
  before :each do
    @user = User.new(first_name: "Andy", last_name: "Lindeman")
  end
  
  describe "full name" do
    it "returns user full name" do
      expect(@user.full_name).to eq "Andy Lindeman"
    end
  end
  
  describe "initials" do
    it "returns user initials" do
      expect(@user.initials).to eq "AL"
    end
  end  
end