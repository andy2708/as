require 'spec_helper'

describe "StaticPages" do
	describe "Home Page" do
		it "should have the content 'Sample App'" do
		# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end
		it "should have the title 'Home'" do
		# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit '/static_pages/home'
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
		end
	end
	
	describe "help page" do
		it "shold ahve the content 'help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end	
		it "should have the title 'Help'" do
		# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit '/static_pages/help'
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "about page" do
		it "shold have the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end	
		it "should have the title 'About'" do
		# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit '/static_pages/about'
			page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
		end
	end
end

