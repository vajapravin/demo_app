require 'spec_helper'

describe "Test pages" do

   describe "Home page" do

   it "should have the content 'Demo App'" do
    visit '/test_pages/home'
    page.should have_content('Demo App')
   end
 end
end
