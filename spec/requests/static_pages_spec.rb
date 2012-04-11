require 'spec_helper'

describe "Static Pages" do
  let (:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "Home Page" do
    it "should have the h1 'Home'" do
      visit root_path
      page.should have_selector('h1', text: 'Sample App')
    end
            
    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector("title",
        :text => "#{base_title}")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector("title",
        :text => "| Home")
    end    
  end
  
  describe "Help Page" do
    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector("title",
        :text => "#{base_title} | Help")
    end
  end
  
  describe "About Page" do
    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1',
        :text => 'About Us')
    end
    
    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector("title",
        :text => "#{base_title} | About Us")
    end
  end
  
  describe "Contact" do
    it "should have content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end
    
    it "should have title 'Contact'" do
      visit contact_path
      page.should have_selector("title",
        text: "Contact")
    end
  end
end
