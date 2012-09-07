require 'spec_helper'

describe "Static pages" do
  subject { page }
  describe "Home page" do
    before :each do
      visit root_path
    end

    it { should have_selector('h1', text: "Sample App") }
    it { should have_selector('title', text: full_title('')) }
    it { should have_no_selector('title', text: "| Home") }
  end

  describe "Help page" do
    before :each do
      visit help_path
    end

    it { should have_selector('h1', text: "Help") }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About Page" do
    before :each do
      visit about_path
    end
    it { should have_selector('h1', text: "About") }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before :each do
      visit contact_path
    end

    it { should have_selector('h1', text: "Contact") }
    it { should have_selector('title', text: full_title('Contact')) }
  end
end
