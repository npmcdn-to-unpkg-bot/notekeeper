require 'rails_helper'

module ControllerHelpers

  def sign_in_as_user
    @user || @user = create(:user)
    sign_in @user
  end

end

