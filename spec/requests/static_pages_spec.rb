require 'spec_helper'

describe "Static pages" do
  subject { page }

	describe "Home page" do
    before {visit root_path}
    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector 'title', text: "Ruby on Rails Tutorial Sample App" }
    it { should_not have_selector 'title', text: '|donkey Home' }
	end

	describe "Help page" do
		it "should have the h1 'Help'" do
			visit help_path 
			page.should have_selector('h1', :text => 'Help')
		end
		it "should have the right title" do
			visit help_path 
			page.should have_selector('title', 
			:text => "Ruby on Rails Tutorial Sample App | Help")
		end
	end
	describe "About page" do

		it "should have the h1 'About Us'" do
			visit about_path 
			page.should have_selector('h1', :text => 'About Us')
		end
		it "should have the right title" do
			visit about_path 
			page.should have_selector('title', 
			:text => "Ruby on Rails Tutorial Sample App | About Us")
		end
	end

	describe "Contact Us page" do

		it "should have the h1 'Contact Us'" do
			visit contact_path 
			page.should have_selector('h1', :text => 'Contact Us')
		end
		it "should have the right title" do
			visit contact_path 
			page.should have_selector('title', 
			:text => "Ruby on Rails Tutorial Sample App | Contact Us")
		end
	end
end
