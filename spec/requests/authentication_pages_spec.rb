require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in') }
  end

   describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_title('Sign in') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end
  end

  describe "with valid information" do
      let(:store) { FactoryGirl.create(:store) }
      before do
        fill_in "Email",    with: store.email.upcase
        fill_in "Password", with: store.password
        click_button "Sign in"
      end

      it { should have_title(store.name) }
      it { should have_link('Profile', href: store_path(store)) }
      it { should have_link('Sign out', href: signout_path) }
      it { should_not have_link('Sign in', href: signin_path) }
    end
  end
end