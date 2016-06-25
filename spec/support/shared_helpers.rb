require 'rails_helper'

module SharedHelpers
  
  def t(*args)
    I18n.translate!(*args)
  end

end
