require 'rails_helper'

feature "User signs up" do
  background do
    @user = build(:user)

    visit root_path

    click_on t('views.layouts.header.register')
  end

  scenario "successfully" do
    fill_in 'Email', with: @user.email
    fill_in 'Username', with: @user.username
    fill_in 'Password', with: @user.password, match: :prefer_exact 
    fill_in 'Password confirmation', with: @user.password

    submit_form

    expect(page).to have_content t('devise.registrations.signed_up')
  end

  scenario "unsuccessfully" do
    fill_in 'Email', with: @user.email
    fill_in 'Password confirmation', with: @user.password

    submit_form

    expect(page).to have_css '.error_notification'

  end

  def submit_form
    within 'form' do
      click_on t('devise.registrations.register_button')
    end
  end

end

