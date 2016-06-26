require 'rails_helper'

feature "User creates a new note" do
  
  before(:each) do
    @user = create(:user)
    login_as @user, scope: :user    
    visit root_path
    click_on t('views.layouts.header.new_note_link')
  end

  scenario "with valid params" do
    fill_and_submit_notes_form(attributes_for(:note),
      submit_link: t('views.notes.new.submit_link'))

    user_sees_notice t('views.notes.create.success_flash')
  end

  scenario "with invalid params" do
    fill_and_submit_notes_form(attributes_for(:invalid_note),
      submit_link: t('views.notes.new.submit_link'))

    expect(page).to have_content 'blank'
  end 

end
