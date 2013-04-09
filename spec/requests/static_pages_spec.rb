require 'spec_helper'

describe "Static Pages" do

let (:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do
    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the base title" do
      visit root_path
      page.should have_selector('title', :text=>"Ruby on Rails Tutorial Sample App")
    end
    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => ' | Home')
    end
  end

  describe "Help Page" do

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title', :text=>"#{base_title} | Help")
    end

  end

 describe "About Page" do
    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title', :text=>"#{base_title} | About Us")
    end
  end

 describe "Contacts Page" do
    it "should have the h1 'Contacts'" do
      visit contacts_path
      page.should have_selector('h1', :text => 'Contacts')
    end
    it "should have the title 'contacts'" do
      visit contacts_path
      page.should have_selector('title', :text=>"#{base_title} | Contacts")
    end
  end

end
