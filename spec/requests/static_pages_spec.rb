require 'spec_helper'

<<<<<<< HEAD
describe "Static pages" do
  subject { page }
  describe "Home page" do
    before { visit root_path } 
    it "should have the content 'Sample App'" do      
      # page.should have_content('Sample App')
    end
  end
end
=======
describe "StaticPages" do
  describe "GET/static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_home_path
      response.status.should be(200)
    end
  end
end
>>>>>>> 8ce5aab3e00c220001ae701cb6441f1f358e78f8
