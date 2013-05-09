require 'spec_helper'

describe "Pages" do
	let(:base_title) { "I Pwned It" }
	describe "Home page" do
		it "should have the content 'Main Page'" do
			visit '/pages/home'
			expect(page).to have_content("Main Page")
		end
		it "should have the title 'Main Page'" do
			visit '/pages/home'
			expect(page).to have_title("#{base_title} | Main Page")
		end
	end
	
	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/pages/about'
			expect(page).to have_content("About Us")
		end
		it "should have the title ' About Us' do
			visit '/pages/about'
			expect(page).to have_title("#{base_title} | About Us")
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/pages/help'
			expect(page).to have_content("Help")
		end
		it "should have the title 'Help'" do
			visit '/pages/help'
			expect(page).to have_title("#{base_title} | Help")
		end
	end
	
	describe "Contacts page" do
		it "should have the content 'Contact'" do
			visit '/pages/contact'
			expect(page).to have_content("Contact")
		end
		it "should have the title 'Contact'" do
			visit '/pages/contact'
			expect(page).to have_title("#{base_title} | Contact Us")
		end
	end
end
