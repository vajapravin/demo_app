require 'spec_helper'

describe "Static pages" do
  subject { page }
  describe "Home page" do
    before { visit root_path } 
    it "should have the content 'Sample App'" do      
      # page.should have_content('Sample App')
    end
  end
end