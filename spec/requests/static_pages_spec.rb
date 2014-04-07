require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have content '出卷子'" do
      visit '/static_pages/home'
      expect(page).to have_content('出卷子')
    end
  end
end
