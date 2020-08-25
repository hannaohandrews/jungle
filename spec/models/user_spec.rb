require 'rails_helper'


RSpec.describe User, type: :model do

  it "should save when all required fields are filled" do 
    @user = User.new({password:'nintendo', password_confirmation: 'nintendo', email: 'nintendo@gmail.com', first_name: "Mario", last_name: "Brothers" })

    @user.save 

    expect(@user).to be_present
  end 

  
end
