require 'spec_helper'

describe "Pages" do
	describe "Home page" do
		it "should have the content 'Main Page'" do
			visit '/pages/home'
			expect(page).to have_content("Main Page")
		end
		it "should have the base title" do
			visit '/pages/home'
			expect(page).to have_title("I Pwned It")
		end
		it "should not have a custom page title" do
			visit '/pages/home'
			expect(page).not_to have_title("| Main Page")
		end
	end
	
	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/pages/about'
			expect(page).to have_content("About Us")
		end
		it "should have the base title" do
			visit '/pages/about'
			expect(page).to have_title("I Pwned It")
		end
		it "should not have a custom page title" do
			visit '/pages/about'
			expect(page).not_to have_title("| About Us")
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/pages/help'
			expect(page).to have_content("Help")
		end
		it "should have the base title" do
			visit '/pages/help'
			expect(page).to have_title("I Pwned It")
		end
		it "should not have a custom page title" do
			visit '/pages/help'
			expect(page).not_to have_title("| Help")
		end		
	end
end
