require 'spec_helper'

describe "Pages" do
	let(:base_title) { "I Pwned It" }
	
	describe "Home page" do
		it "should have the content 'Main Page'" do
			visit '/pages/home'
			expect(page).to have_content('Main Page')
		end
			
		it "should have the h1 'Main Page'" do
			visit root_path
			expect(page).to have_content('Main Page')
		end
		it "should have the base title" do
			visit root_path
			expect(page).to have_title("#{base_title}")
		end
		it "should not have a custom page title" do
			visit root_path
			expect(page).not_to have_title(' | Main Page')
		end		
	end
	
	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/pages/about'
			expect(page).to have_content('About Us')
		end
		it "should have the h1 'About Us'" do
			visit '/pages/about'
			expect(page).to have_content('About Us')
		end
		it "should have the base title" do
			visit '/pages/about'
			expect(page).to have_title("#{base_title}")
		end
		it "should not have a custom page title" do
			visit '/pages/about'
			expect(page).not_to have_title('#{base_title} | About Us')
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/pages/help'
			expect(page).to have_content('Help')
		end		
		it "should have the h1 'Help'" do
			visit '/pages/help'
			expect(page).to have_content('Help')
		end
	end
	
	describe "Contacts page" do
		it "should have the content 'Contact'" do
			visit '/pages/contact'
			expect(page).to have_content('Contact')
		end
	end
end
	
	
	
	
	
	
	
	
	
