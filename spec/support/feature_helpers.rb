require 'rails_helper'

module FeatureHelpers

  def user_sees_notice(message)
   expect(page).to have_css('.flash_message', text: message) 
  end


  def fill_and_submit_notes_form(attributes, submit_link: nil)
    fill_in 'Title', with: attributes[:title]
    fill_in 'Content', with:  attributes[:content]

    click_on submit_link
  end

end
