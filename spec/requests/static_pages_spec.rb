require 'rails_helper'

describe "Static Pages" do #Listing 3.9 , type: :request do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home page" do
    it "works! (now write some real specs)" do
     visit '/static_pages/home' #Listing 3.9 get static_pages_index_path
      expect(page).to have_content('Sample App')
  end 
       it "should have the right title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title} | Home")
  
    end
  end
     #This is test-case for help page 

      describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
 
    it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	expect(page).to have_title("#{base_title} | Help")
    end
end 

      describe "About page" do 
        it "Should have the content 'About Us'" do
          visit '/static_pages/about'
          expect(page).to have_content('About Us')
        end
          it "should have the title 'About'" do
          	visit '/static_pages/about'
          	expect(page).to have_title("#{base_title} | About Us")
   
   end
end
      describe "Contact page"
      it "Should have the content 'Contact'" do
        visit '/static_pages/contact'
        expect(page).to have_content("Contact")
      end

      it "Should have the title 'Ruby on Rails Tutorial Sample App | Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
 end
end
