 require 'rails_helper'

 feature 'User signs in' do

  background do
    @user = create(:user)

    visit root_path

    within('.site_header') do
      click_on 'Login'
    end
  end
  
  scenario 'with valid details' do
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password

    submit_form

    user_sees_notice t('devise.sessions.signed_in')
  end

  scenario 'with invalid details' do
    fill_in 'Email', with: ''    
    fill_in 'Password', with: @user.password

    submit_form

    user_sees_notice t('devise.failure.invalid', authentication_keys: 'Email')
  end


  def submit_form
    within 'form' do
      click_on t('devise.sessions.login_button')
    end
  end

 end
