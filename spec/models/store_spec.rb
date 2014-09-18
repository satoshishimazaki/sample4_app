require 'spec_helper'

#describe Store do

  #before do
    #@store = Store.new(name: "Example User", email: "user@example.com",
                     #password: "foobar", password_confirmation: "foobar")
  #end

  #subject { @store }

  #describe "with a password that's too short" do
    #before { @store.password = @store.password_confirmation = "a" * 5 }
    #it { should be_invalid }
  #end

  #describe "return value of authenticate method" do
    #before { @store.save }
    #let(:found_store) { Store.find_by(email: @user.email) }

    #describe "with valid password" do
      #it { should eq found_store.authenticate(@store.password) }
    #end

    #describe "with invalid password" do
     # let(:store_for_invalid_password) { found_store.authenticate("invalid") }

      #it { should_not eq store_for_invalid_password }
      #specify { expect(store_for_invalid_password).to be_false }
    #end
  #end
#end