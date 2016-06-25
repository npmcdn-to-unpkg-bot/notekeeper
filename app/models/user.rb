class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "<200x200>", thumb: "<50x50>" },
    default_url: "avatar/:style/missing.jpg"

  validates_attachment :avatar,
    content_type: { content_type: /^image\/(png|gif|jpeg)/ },
    size: { less_than: 5.megabytes }

  has_many :notes, dependent: :destroy
end
