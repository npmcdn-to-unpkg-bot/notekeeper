class PagesController < ApplicationController
  
  def index
    return redirect_to :new_user_session if !user_signed_in?

    @notes = current_user.notes
  end

end
