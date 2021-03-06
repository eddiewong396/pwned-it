require 'spec_helper'

describe "Pages" do
	
	subject { page }
	
	describe "Home page" do
		before { visit root_path }
		
		it { should have_content('Main Page') }
		it { should have_title(full_title('')) }
		it { should_not have_title(' | Main Page') }
	end
	
	describe "About page" do
		before { visit about_path }
		
		it { should have_content('About') }
		it { should have_title(full_title('About Us')) }
	end

	describe "Help page" do
		before { visit help_path }
		
		it { should have_content('Help') }
		it { should have_title(full_title('Help')) }
	end
	
	describe "Contacts page" do
		before { visit contact_path }
		
		it { should have_content('Contact') }
		it { should have_title(full_title('Contact Us')) }
	end
	
	it "should have the right links on the layout" do
		visit root_path
		click_link "About"
		expect(page).to have_title(full_title('About Us'))
		click_link "Help"
		expect(page).to have_title(full_title('Help'))
		click_link "Contact"
		expect(page).to have_title(full_title('Contact'))
		click_link "Home"
		click_link "Sign in"
		expect(page).to have_title(full_title('Sign in'))
	end
end