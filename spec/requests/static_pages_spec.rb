require 'rails_helper'

#RSpec.describe "StaticPages", :type => :request do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      get static_pages_index_path
#      expect(response.status).to be(200)
#    end
#  end
#end

describe "Static pages" do
	
	describe "Home page" do
		it "shoud have content 'FoodDelivery'" do
			visit '/static_pages/home'
			expect(page).to have_content('FoodDelivery')
		end

		it "should have title 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title('FoodDelivery | Home')
		end 
	end

	describe "Help page" do
		it "should have content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title('FoodDelivery | Help')
		end 
	end

	describe "About page" do
		it "should have content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end
		it "should have title 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_title('FoodDelivery | About Us')
		end 
	end

end 