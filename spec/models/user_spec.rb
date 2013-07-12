require 'spec_helper'

describe User do
  describe "user creation" do
    before(:each) do
      @user = Fabricate(:user)
    end
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }  
    it "should display full name" do
      first_name = @user.first_name
      last_name = @user.last_name
      @user.full_name.should eq("#{first_name} #{last_name}")
    end
  end
end
