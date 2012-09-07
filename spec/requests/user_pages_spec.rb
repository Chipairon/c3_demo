require 'spec_helper'

describe "User Pages" do
  subject { page }
  describe "sign up page" do
    before :each do
      visit signup_path
    end
    it { should have_selector('h1', text: "Sign up") }
    it { should have_selector('title', text: full_title('Sign up')) }
  end
end

