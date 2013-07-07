require 'spec_helper'

describe "StaticPages" do
	describe "Home Page" do
		before { visit root_path }
		it {should have_selector('h1','Sample App')} 
		it {should have_selector('title',text:'Ruby on Rails Tutorial | Home')} 
			
	end
	
	describe "help page" do
		it "shold ahve the content 'help'" do
			visit help_path
			page.should have_content('Help')
		end	
		it "should have the title 'Help'" do
		# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit help_path
			page.should have_selector('title', :text => "Ruby on Rails Tutorial | Help")
		end
	end

	describe "about page" do
		it "shold have the content 'About Us'" do
			visit about_path
			page.should have_content('About Us')
		end	
		it "should have the title 'About'" do
		# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit about_path
			page.should have_selector('title', :text => "Ruby on Rails Tutorial | About")
		end
	end
	
	describe "contact page" do
		it "shold have the content 'Contact'" do
			visit contact_path
			page.should have_selector('h1',text:'Contact')
		end	
		it "should have the title 'Contact'" do
		# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
			visit contact_path
			page.should have_selector('title', :text => "Ruby on Rails Tutorial | Contact")
		end
	end
end

