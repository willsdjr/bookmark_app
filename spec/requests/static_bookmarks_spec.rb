require 'spec_helper'

describe "Bookmarks App" do
    
    describe "Home page" do
        it "should have the content 'Bookmark App'" do
             visit '/static_bookmarks/home'
             page.should have_content('Bookmark App')
    end
    end
  
  describe "Help page" do
      it "should have the content 'Help'" do
          visit '/static_bookmarks/help'
          page.should have_content('Help')
 
    end
  end
end
