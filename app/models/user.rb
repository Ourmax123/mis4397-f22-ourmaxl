class User < ApplicationRecord
  require 'faker'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :posts, dependent: :destroy
  after_commit :add_default_avatar, on: %i[create update]
  
  def followers
    write_attribute(:followers, Faker::Number.between(from: 1, to: 10))
  end
  
  def followed
    write_attribute(:followed, Faker::Number.between(from: 1, to: 10))
  end
  
  
  def avatar_thumbnail
      if avatar.attached?
        avatar.variant(resize_to_fit: [100, 100]).processed
      else
        "default_profile.jpg"
      end
  end  
  
  private
  def add_default_avatar
    unless avatar.attached?
      avatar.attach(
        io: File.open(
          Rails.root.join(
            
            'app', 'assets', 'images', 'default_profile.jpg'
          )
        ), filename: 'default_profile.jpg',
           content_type: 'image/jpg'
      )
    end  
  end
end
