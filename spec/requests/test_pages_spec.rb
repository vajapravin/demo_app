require 'spec_helper'

describe "Test pages" do  
  describe "Home page" do
    include Capybara::DSL
    it "should have the content 'Demo App'" do
      visit '/test_pages/home'      
      #page.should have_selector("title", :text => "anything title")
    end
  end
end

#page.html.should match '<title>Ruby on Rails Tutorial Demo App | Home</title>'
#page.should have_content('Demo App')
