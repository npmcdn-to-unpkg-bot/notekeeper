require 'rails_helper'

feature "User signs out" do

  scenario "successfully" do

    @user = create(:user)
    login_as @user, scope: :user

    visit root_path
    page.find('.account_dropdown_toggle').click

    click_on t('views.layouts.header.logout')

    expect(page).to have_content t('devise.sessions.signed_out')
  end

end
