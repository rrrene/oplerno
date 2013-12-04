require 'spec_helper'

describe 'Active Admin' do

  before(:all) do
    I18n.locale = :en
  end

  it "rejects a reqular user" do
    @user = FactoryGirl.create(:user)

    visit '/users/sign_out'
    visit '/users/sign_in'
    fill_in I18n.t('devise.sessions.new.email'), with: @user.email
    fill_in I18n.t('devise.sessions.new.password'), with: @user.password
    click_button I18n.t('devise.sessions.new.sign_in')

    visit "/admin"
    expect(page).not_to have_content "Dashboard"
    expect(page).to have_content "Unauthorized Access!"
  end

end