require 'rails_helper'

module FeatureHelpers

  def user_sees_notice(message)
   expect(page).to have_css('.flash_message', text: message) 
  end

end
