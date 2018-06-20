require 'rails_helper'

describe "Static Pages" #Listing 3.9 , type: :request do
  describe "Home page" do
    it "works! (now write some real specs)" do
     visit '/static_pages/home' #Listing 3.9 get static_pages_index_path
      expect(page).to have_http_content('Sample App')
    end
  end
end
