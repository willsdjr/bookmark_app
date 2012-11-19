require 'spec_helper'

describe "Bookmark App" do
    
    describe "Home page" do
       it "should have the content 'Bookmark App'" do
            visit '/'
            page.should have_content('Bookmark App')
    end
    end
  
  describe "Help page" do
      it "should have the content 'Help'" do
          visit '/help'
          page.should have_content('Help')
 
    end
  end
  
  describe "Search box" do
      it "should have the content 'Search box'" do
          visit '/searchbox'
          page.should have_content('Search')
 
    end
  end
  
end
