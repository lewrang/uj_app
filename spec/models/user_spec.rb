require "rails_helper"

describe User  do
  describe "full name" do
    it "returns user full name" do
      user = User.new(first_name: "Andy", last_name: "Lindeman")
      expect(user.full_name).to eq "Andy Lindeman"
    end
  end
  
  describe "initials" do
    it "returns user initials" do
      user = User.new(first_name: "Andy", last_name: "Lindeman")
      expect(user.initials).to eq "AL"
    end
  end  
end