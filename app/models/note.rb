class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :colour

  validates :title, { presence: true }

  validates :user, { presence: true }
end
