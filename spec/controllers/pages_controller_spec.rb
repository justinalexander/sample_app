require 'spec_helper'

describe PagesController do

  render_views
  
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
   it "should have the right title" do
      visit 'home'
         page.should have_selector('title', :content => "Home")
   end
   
   it "should have a non-blank body" do
     visit 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
     
     it "should have the right title" do
       visit 'contact'
           page.should have_selector('title', :content => "Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
     
     it "should have the right title" do
       visit 'about'
          page.should have_selector('title', :content => "About")
    end
  end
  
end
